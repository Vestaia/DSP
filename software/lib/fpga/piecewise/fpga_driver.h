#pragma once
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <math.h>
#include "common.h"

#define DATA_RING_ADDR 0x10000000
#define DATA_RING_WPTR 0x18000000
#define DATA_RING_SIZE (1<<25)
#define RESET_WRITER (1<<2)
#define RESET_DAQ (1<<1)
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

class pwp_fpga : public fpga<fpga_cfg, sample> {
    
    public:
    pwp_fpga();
    ~pwp_fpga();

    //Set coefficients of polynomial filter
    int set_coef(uint32_t *coef);

    //Set coefficients using polynomial coeffients
    int set_poly_coef(uint32_t *coef);

    int reset();
};
