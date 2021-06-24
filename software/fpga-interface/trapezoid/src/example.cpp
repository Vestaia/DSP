#include "trapezoidAPI.h"
#include <iostream>
#include <iomanip>

//Note API is WIP, there's a lot of bugs.
//Functions are just minimum working placeholders
//Until I find time to write a proper interface

//Capture_events() is currently not implemented. 
//Events above a threshhold set by set_trigger()
//are stored in a ring buffer at EVENT_RING_ADDR

//Capture_raw() just reads from the ring buffer linearly.
//So the max capture size is DATA_RING_SIZE.
//Theoretically the CPU should be able to keep up with the FPGA
//to read 125Ms/s, but currently the fpga overtakes the CPU.

int main(){

    fpga trap;
    trap.set_shape(10,15,1000);
    trap.reset();
    sleep(1);
    sample* data = trap.capture_n_raw(1000);
    for (int i = 0; i < 1000; i+=1){
        std::cout   << data[i].time 
                    << ": "
                    // << std::setw(7) 
                    // << data[i].ch_a 
                    // << std::setw(7) 
                    // << data[i].ch_b 
                    << '\n';
    }
    free(data);
    return 0;
}


