#pragma once
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <math.h>

#define DATA_RING_ADDR 0x10000000
#define DATA_RING_SIZE (1<<25)
#define CONFIG_ADDR 0x40000000
#define RESET_WRITER 1<<2
#define RESET_DAQ 1<<1
#define CLOCK_FREQ 125000000
#define PIECES 2
#define ORDER 3

//Configuration Register Structure
#pragma pack(push, 1) //Disable padding
struct fpga_cfg {                     
    volatile uint8_t  reset;                        //0x00
    volatile uint32_t coef[PIECES * (ORDER + 1)];   //0x01
    volatile uint16_t delay[PIECES - 1];
};
#pragma pack(pop)

//Structure of single sample from DAQ
#pragma pack(push, 1)
struct sample {
    volatile uint32_t time;
    volatile int16_t  ch_a;
    volatile int16_t  ch_b;
};
#pragma pack(pop)

class fpga {
    int fd;
    volatile uint8_t* ram;
    volatile uint32_t *slcr, *hp0;
    volatile fpga_cfg* cfg;

    public:
    fpga();

    ~fpga();

    //Set coefficients of polynomial filter
    int set_coef(uint32_t *coef);

    //Set coefficients using polynomial coeffients
    int set_poly_coef(uint32_t *coef);

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
