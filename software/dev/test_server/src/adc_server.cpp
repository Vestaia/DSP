#include "network.h"
#include "fpga_driver.h"
#include <stdio.h>
int main(){
    pwp_fpga rp = pwp_fpga();
    server s = server();
    int32_t coef[8] = {1,0,0,0,-1,0,0,0};
    uint16_t delay[1] = {32};
    rp.set_coef(coef, sizeof(coef));
    rp.set_delay(delay, sizeof(delay));
    rp.reset();
    request req;
    s.attach(INADDR_ANY, 42069);
    int j = 0;
    while(1){
        if(s.read_request(&req) < 0){
            perror("read_request");
            break;
        }
        uint32_t* data = new uint32_t[req.nsamples];
        sample* samples = new sample[req.nsamples];
        rp.capture_n_raw(samples, req.nsamples, req.rate);
        for (int i = 0; i < req.nsamples; i++){
            data[i] = samples[i].ch_a;
        }
        s.send(data, req.nsamples * sizeof(data[0]));
        delete[] data;
        delete[] samples;
        j++;
    }
    return 0;
}
