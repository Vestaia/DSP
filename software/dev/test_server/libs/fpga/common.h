#pragma once
#define CONFIG_ADDR 0x40000000
#define CLOCK_FREQ 125000000
#include <stdio.h>
#include <cstring> //For memcpy

template <class fpga_cfg, class sample>
class fpga {

    public:
    int fd;
    volatile uint32_t *slcr, *hp0;
    volatile fpga_cfg* cfg;
    volatile uint8_t* ring_buf;
    volatile uint32_t* ring_wptr; 
    int32_t ring_size;
    fpga();
    ~fpga();

    //Obtain n raw samples starting now
    void capture_n_raw(sample* data, unsigned int n);
    
    //Obtain raw samples for t seconds
    void capture_t_raw(sample* data, float t);

    //Obtain n events starting now
    void capture_n_events(sample* data, unsigned int n);

    //Obtain events for t seconds
    void capture_t_events(sample* data, float t);

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

template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_n_raw(sample* data, unsigned int n){
    if ((n * sizoeof(sample)) > ring_size) return;
    void* dest = data;
    int32_t end_pos = (int)(*ring_wptr * sizeof(sample));
    int32_t start_pos = (int)(end_pos - (n * sizeof(sample)));
    if (start_pos < 0){
        std::memcpy(dest, ring_buf + ring_size + start_pos, 0 - start_pos);
        std::memcpy(dest - start_pos, ring_buf, end_pos);
    } else {
        std::memcpy(dest, start_pos, end_pos);
    }
}
template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_t_raw(sample* data, float t){
    fpga::capture_n_raw(data, t * CLOCK_FREQ);
}

//TODO: Implement this
template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_n_events(sample* data, unsigned int n){
}

template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_t_events(sample* data, float t){
    fpga::capture_n_events(data, t * CLOCK_FREQ);
}
