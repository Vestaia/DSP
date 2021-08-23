#include "network.h"
#include "fpga_driver.h"
#include <stdio.h>
#include <iostream>
int main(){
    pwp_fpga rp = pwp_fpga();
    server s = server();
    uint16_t delay[2] = {16,84};
    float coef[12] = 
    {0, 1, 0, 0, 
    0, -1, 0, 0, 
    0, 0, 0, 0};
    //{0, 1, 0, 2, -1, 0};
    int32_t mat[1] = {1};
    rp.set_coef(coef);
    rp.set_delay(delay, sizeof(delay));
    rp.set_design_mat(mat, sizeof(mat));
    rp.reset();
    request req;
    s.attach(INADDR_ANY, 42069);
    int j = 0;
    while(1){
        if(s.read_request(&req) < 0){
            perror("read_request");
            break;
        }
        sample* samples = new sample[req.nsamples];
        rp.capture_n_raw(samples, req.nsamples, req.period);
        s.send(samples, req.nsamples * sizeof(sample));
        delete[] samples;
    }

    // uint nsamples = 10000;
    // uint period = 1000;
    // uint iters = 50;
    // uint count = 0;
    // uint32_t* data = new uint32_t[nsamples * iters];
    // sample* samples = new sample[nsamples];
    // for (uint i = 0; i < iters; i++){
    //     rp.capture_n_continuous(samples, nsamples, period);
    //     for (uint i = 0; i < nsamples; i++)
    //         data[count++] = samples[i].time;
    // }

    // for (uint i = 1; i < iters * nsamples; i++){
    //     //printf("%u\n", data[i]);
    //     if (data[i] - data[i-1] != period)
    //         printf("%d\n", data[i] - data[i-1]);
    // }

    return 0;
}
