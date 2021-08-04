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
#define DATA_RING_SIZE (8<<24)
#define RESET_WRITER (1<<2)
#define RESET_DAQ (1<<1)

//Configuration Register Structure
#pragma pack(push, 1) //Disable padding
struct fpga_cfg {                     
    volatile uint8_t  reset;                    
    volatile uint8_t  reserved[127];
    volatile uint32_t coef[32];  
    volatile uint16_t delay[64];
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

    //Set coefficients using FIR coefficients
    int set_coef_fir(int32_t *coef, size_t size);

    //Set coefficients using IIR coefficients
    int set_coef(int32_t *coef, size_t size);

    //Set coefficients using FIR coefficients
    int set_poly_coef(int32_t *coef, size_t size);

    //Set delays of pieces relative to previous delay
    int set_delay(uint16_t *delay, size_t size);
    
    //Set absolute delays of pieces from current sample
    int set_delay_abs(uint16_t *delay, size_t size);

    int reset();
};
