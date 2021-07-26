#pragma once
#define CONFIG_ADDR 0x40000000
#define CLOCK_FREQ 125000000
#include <stdio.h>
#include <algorithm>
#include <cmath>

template <class fpga_cfg, class sample>
class fpga {

    public:
    int fd;
    volatile uint32_t *slcr, *hp0;
    volatile fpga_cfg* cfg;
    volatile uint64_t* ring_buf;
    volatile uint32_t* ring_wptr; 
    int32_t ring_size;
    fpga();
    ~fpga();

    //Obtain n raw samples starting now
    void capture_n_raw(sample* data, uint n, uint period = 1);
    
    //Obtain raw samples for t seconds
    void capture_t_raw(sample* data, float t, uint period = 1);

    void capture_n_continuous(sample* data, uint n, uint period = 1);

    //Obtain n events starting now
    void capture_n_events(sample* data, uint n);

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


//Implement averaging
template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_n_raw(sample* data, uint n, uint period){
    uint count = 0;
    uint end = *ring_wptr;
    uint64_t* buffer = (uint64_t*)data;
    if (n * period > end){
        uint i = ring_size + end - n * period;
        for (i; i < ring_size; i += period){
            buffer[count++] = ring_buf[i];
        }
        for (i = i - ring_size; i < end; i += period){
            buffer[count++] = ring_buf[i];
        }
    }
    else{
        for (uint i = end - n * period; i < end; i += period){
            buffer[count++] = ring_buf[i];
        }
    }
}

template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_n_continuous(sample* data, uint n, uint period){
    uint count = 0;
    uint64_t* buffer = (uint64_t*)data;
    static uint start = *ring_wptr;
    uint end = start + n * period;
    usleep((end - start) / period * 1000000.0 / CLOCK_FREQ);
    if (end > ring_size){
        end -= ring_size;
        uint i = start;
        for (i; i < ring_size; i += period){
            buffer[count++] = ring_buf[i];
        }
        for (i = i - ring_size; i < end; i += period){
            buffer[count++] = ring_buf[i];
        }
    }
    else{
        for (uint i = end - n * period; i < end; i += period){
            buffer[count++] = ring_buf[i];
        }
    }
    start = end;
}


template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_t_raw(sample* data, float t, uint period){
    fpga::capture_n_raw(data, t * CLOCK_FREQ / period, period);
}

//TODO: Implement this
template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_n_events(sample* data, uint n){
}

template <class fpga_cfg, class sample>
void fpga<fpga_cfg,sample>::capture_t_events(sample* data, float t){
    fpga::capture_n_events(data, t * CLOCK_FREQ);
}
