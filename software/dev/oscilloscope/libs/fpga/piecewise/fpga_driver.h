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
#define MAX_ORDER 4
#define MAX_PIECE 3
#define MAX_DELAY 10

//Configuration Register Structure
#pragma pack(push, 1) //Disable padding
struct fpga_cfg {                     
    volatile uint8_t  reset;                    
    volatile uint8_t  reserved[127];
    volatile uint32_t coef[32];  
    volatile uint16_t delay[32];
    volatile uint32_t mat[16];
};
#pragma pack(pop)

//Structure of single sample from DAQ
#pragma pack(push, 1)
struct sample {
    volatile int16_t  ch_a;
    volatile int16_t  error;
    volatile int32_t  fit;
};
#pragma pack(pop)

class pwp_fpga : public fpga<fpga_cfg, sample> {
    
    public:
    pwp_fpga();
    ~pwp_fpga();

    //Set coefficients using IIR coefficients
    int set_coef_raw(int32_t *coef, size_t size);

    //Set coefficients using FIR coefficients
    int set_coef(float *coef);

    //Set delays of pieces relative to previous delay
    int set_delay(uint16_t *delay, size_t size);
    
    //Set absolute delays of pieces from current sample
    int set_delay_abs(uint16_t *delay, size_t size);

    //Input design matrix
    int set_design_mat(int32_t *mat, size_t size);

    int reset();
};
