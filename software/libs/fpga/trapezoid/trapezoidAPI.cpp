#include "trapezoidAPI.h"

fpga::fpga(){
    if((fd = open("/dev/mem", O_RDWR)) < 0){
        perror("open");
        exit(EXIT_FAILURE);
    }
    slcr = (volatile uint32_t*) mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0xF8000000);
    hp0  = (volatile uint32_t*) mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0xF8008000);
    cfg  = (volatile fpga_cfg*) mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, CONFIG_ADDR);
    ram  = (volatile uint8_t*)  mmap(NULL, DATA_RING_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, DATA_RING_ADDR);
    slcr[2] = 0xDF0D;
    slcr[144] = 0;
    hp0[0] &= ~1;
    hp0[5] &= ~1;
}

fpga::~fpga(){
    munmap((void*)slcr, sysconf(_SC_PAGESIZE));
    munmap((void*)hp0, sysconf(_SC_PAGESIZE));
    munmap((void*)cfg, sysconf(_SC_PAGESIZE));
    munmap((void*)ram, DATA_RING_SIZE);
    close(fd);
}

//TODO: Add reset-filter in hardware to avoid needing full daq reset
int fpga::set_shape(uint16_t k, uint16_t l, uint16_t m){
    cfg->k_delay = k;
    cfg->l_delay = l;
    cfg->m_shape = m;
    return 0;
}

//TODO: Add calculation for converting time constant to m_shape.
//int fpga::set_shape_tau(k, l, tau)...

int fpga::set_trigger(uint16_t threshhold){
    cfg->trigger_threshhold = threshhold;
    return 0;
}

//TODO: Make this actually work std::memcpy()
sample* fpga::capture_n_raw(unsigned int n){
    sample* data = (sample*)malloc(n * sizeof(sample));
    for (int i = 0; i < n; i++)
        data[i] = *((sample *)(ram + sizeof(sample) * i));
    return data;
}

sample* fpga::capture_t_raw(float t){
    return fpga::capture_n_raw(t * CLOCK_FREQ);
}

//TODO: Implement this
sample* fpga::capture_n_events(unsigned int n){
    sample* data = (sample*)malloc(n * sizeof(sample));
    return data;
}

sample* fpga::capture_t_events(float t){
    return fpga::capture_n_events(t * CLOCK_FREQ);
}

int fpga::reset(){
    cfg->reset &= ~RESET_DAQ;
    //DMA will deadlock without wait
    //No idea why
    usleep(1000); 
    cfg->reset &= ~RESET_WRITER;
    cfg->reset |= RESET_WRITER;
    cfg->reset |= RESET_DAQ;
    return 0;
}