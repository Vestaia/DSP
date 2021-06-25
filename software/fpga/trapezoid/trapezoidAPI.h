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
#define EVENT_RING_ADDR 0x1F676980
#define CONFIG_ADDR 0x40000000
#define RESET_WRITER (1<<2)
#define RESET_DAQ (1<<1)
#define CLOCK_FREQ 125000000

//Configuration Register Structure
#pragma pack(push, 1) //Disable padding
struct fpga_cfg {                     
    volatile uint8_t  reset;                    //0x00
    volatile uint32_t reserved0;                //0x01
    volatile uint16_t reserved1;                //0x05
    volatile uint8_t  led_setting;              //0x07
    volatile uint16_t k_delay;                  //0x08
    volatile uint16_t l_delay;                  //0x0A
    volatile uint16_t m_shape;                  //0x0C
    volatile uint16_t reserved3;                //0x0E
    volatile uint16_t trigger_threshhold;       //0x10
    volatile uint16_t reserved4;                //0x12
    volatile uint32_t reserved5;                //0x14
    volatile uint64_t reserved6;                //0x18
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

    //Change the shape parameters of the trapezoid filter
    int set_shape(uint16_t k, uint16_t l, uint16_t m);

    //Set trigger threshhold
    int set_trigger(uint16_t threshhold);

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
