#include "fpga_driver.h"
#include "common.h"

pwp_fpga::pwp_fpga(){
    ring_buf  = (volatile uint8_t*)  mmap(NULL, DATA_RING_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, DATA_RING_ADDR);
}

pwp_fpga::~pwp_fpga(){
    munmap((void*)ring_buf, DATA_RING_SIZE);
}

int pwp_fpga::set_coef(uint32_t *coef){
    for (int i = 0; i < sizeof(cfg->coef)/sizeof(cfg->coef[0]); i++){
        cfg->coef[i] = coef[i];
    }
    return 0;
}

int pwp_fpga::reset(){
    cfg->reset &= ~RESET_DAQ;
    //DMA will deadlock without wait
    //No idea why
    usleep(1000); 
    cfg->reset &= ~RESET_WRITER;
    cfg->reset |= RESET_WRITER;
    cfg->reset |= RESET_DAQ;
    return 0;
}