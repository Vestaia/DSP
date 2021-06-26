#pragma once
#define CONFIG_ADDR 0x40000000
#define CLOCK_FREQ 125000000
template <class fpga_cfg, class sample>
class fpga {

    public:
    int fd;
    volatile uint32_t *slcr, *hp0;
    volatile fpga_cfg* cfg;
    volatile uint8_t* ring_buf;
    fpga();
    ~fpga();

    //Obtain n raw samples starting now
    sample* capture_n_raw(unsigned int n);
    
    //Obtain raw samples for t seconds
    sample* capture_t_raw(float t);

    //Obtain n events starting now
    sample* capture_n_events(unsigned int n);

    //Obtain events for t seconds
    sample* capture_t_events(float t);

    int reset();
};

template <class fpga_cfg, class sample>
fpga<fpga_cfg,sample>::fpga(){
    if((fd = open("/dev/mem", O_RDWR)) < 0){
        perror("open");
        exit(EXIT_FAILURE);
    }
    slcr = (volatile uint32_t*) mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0xF8000000);
    hp0  = (volatile uint32_t*) mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0xF8008000);
    cfg  = (volatile fpga_cfg*) mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, CONFIG_ADDR);
    slcr[2] = 0xDF0D;
    slcr[144] = 0;
    hp0[0] &= ~1;
    hp0[5] &= ~1;
}

template <class fpga_cfg, class sample>
fpga<fpga_cfg,sample>::~fpga(){
    munmap((void*)slcr, sysconf(_SC_PAGESIZE));
    munmap((void*)hp0, sysconf(_SC_PAGESIZE));
    munmap((void*)cfg, sysconf(_SC_PAGESIZE));
    close(fd);
}

//TODO: Make this actually work std::memcpy()
template <class fpga_cfg, class sample>
sample* fpga<fpga_cfg,sample>::capture_n_raw(unsigned int n){
    sample* data = (sample*)malloc(n * sizeof(sample));
    for (int i = 0; i < n; i++)
        data[i] = *((sample *)(ring_buf + sizeof(sample) * i));
    return data;
}
template <class fpga_cfg, class sample>
sample* fpga<fpga_cfg,sample>::capture_t_raw(float t){
    return fpga::capture_n_raw(t * CLOCK_FREQ);
}

//TODO: Implement this
template <class fpga_cfg, class sample>
sample* fpga<fpga_cfg,sample>::capture_n_events(unsigned int n){
    sample* data = (sample*)malloc(n * sizeof(sample));
    return data;
}

template <class fpga_cfg, class sample>
sample* fpga<fpga_cfg,sample>::capture_t_events(float t){
    fpga::capture_n_events(t * CLOCK_FREQ);
}
