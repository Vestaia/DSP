#include "fpga_driver.h"
#include "common.h"

pwp_fpga::pwp_fpga(){
    ring_buf  = (volatile uint64_t*)  mmap(NULL, DATA_RING_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, DATA_RING_ADDR);
    ring_wptr = (volatile uint32_t*)  mmap(NULL, 4, PROT_READ|PROT_WRITE, MAP_SHARED, fd, DATA_RING_WPTR);
    ring_size = DATA_RING_SIZE/8;
}

pwp_fpga::~pwp_fpga(){
    cfg->reset &= ~RESET_DAQ;
    usleep(1000); 
    cfg->reset &= ~RESET_WRITER;
    munmap((void*)ring_buf, DATA_RING_SIZE);
    munmap((void*)ring_wptr, 4);
}

int pwp_fpga::set_coef_raw(int32_t *coef, size_t size){
    for (uint i = 0; i < size/sizeof(*coef); i++){
        printf("Coef %d set to %d\n", i, coef[i]);    
        cfg->coef[i] = coef[i];
    }
    return 0;
}
int pwp_fpga::set_coef(float *coef){
    int32_t scaled_coef[MAX_PIECE][MAX_ORDER];
    for (uint i = 0; i < MAX_PIECE; i++)
        for (uint j = 0; j < MAX_ORDER; j++)
            scaled_coef[i][j] = (int)(coef[i*MAX_ORDER + j] * pow(2 , MAX_DELAY * j));
            //printf("Piece %d order %d coefficient set to %d\n", i, j, scaled_coef[i][j]);
    for (uint i = MAX_PIECE; i > 1; i--)
        for (uint k = 0; k < MAX_ORDER; k++)
            for (uint j = 1; j < MAX_ORDER - k; j++)
                scaled_coef[i-1][j] -= scaled_coef[i-2][j+k] * (j + k - 1);

    for (uint i = 0; i < MAX_PIECE; i++){
        for (uint j = 0; j < MAX_ORDER; j++){
            coef[i*MAX_ORDER + j] = scaled_coef[i][j];
            printf("Piece %d order %d coefficient set to %d\n", i, j, scaled_coef[i][j]);
        }
    }
    return 0;

}

int pwp_fpga::set_delay(uint16_t *delay, size_t size){
    for (unsigned long i = 0; i < size/sizeof(*delay); i++){
        printf("Delay %d set to %d\n", i, delay[i]);
        cfg->delay[i] = delay[i];
    }
    return 0;
}

int pwp_fpga::set_design_mat(int32_t *mat, size_t size){
    for (unsigned long i = 0; i < size/sizeof(*mat); i++){
        printf("Design matrix coef %d set to: %d\n", i, mat[i]);
        cfg->mat[i] = mat[i];
    }
}
int pwp_fpga::reset(){
    cfg->reset &= ~RESET_DAQ;
    usleep(1000); 
    cfg->reset &= ~RESET_WRITER;
    cfg->reset |= RESET_WRITER;
    cfg->reset |= RESET_DAQ;
    return 0;
}