#include "network.h"
#include "fpga_driver.h"
#include <stdio.h>
#include <chrono>
int main(){
    pwp_fpga rp = pwp_fpga();
    server s = server();
    int32_t coef[8] = {1,0,0,0,-1,0,0,0};
    uint16_t delay[1] = {32};
    rp.set_coef(coef, sizeof(coef));
    rp.set_delay(delay, sizeof(delay));
    rp.reset();
    // request req;
    // s.attach(INADDR_ANY, 42069);
    // int j = 0;
    // while(1){
    //     auto t_start = std::chrono::steady_clock::now();
    //     if(s.read_request(&req) < 0){
    //         perror("read_request");
    //         break;
    //     }
    //     auto t_request = std::chrono::steady_clock::now();
    //     uint32_t* data = new uint32_t[req.nsamples];
    //     sample* samples = new sample[req.nsamples];
    //     rp.capture_n_raw(samples, req.nsamples, req.period);
    //     auto t_capture = std::chrono::steady_clock::now();
    //     for (int i = 0; i < req.nsamples; i++){
    //         data[i] = samples[i].ch_a;
    //     }
    //     auto t_copy = std::chrono::steady_clock::now();
    //     s.send(data, req.nsamples * sizeof(data[0]));
    //     auto t_send = std::chrono::steady_clock::now();
    //     delete[] data;
    //     delete[] samples;
    //     printf("Request: %dms\nCapture: %dms\nCopy: %dms\nSend: %dms\n", 
    //         std::chrono::duration_cast<std::chrono::milliseconds>(t_request - t_start).count(),
    //         std::chrono::duration_cast<std::chrono::milliseconds>(t_capture - t_start).count(),
    //         std::chrono::duration_cast<std::chrono::milliseconds>(t_copy - t_start).count(),
    //         std::chrono::duration_cast<std::chrono::milliseconds>(t_send - t_start).count());
    // }

    uint nsamples = 10000;
    uint period = 1000;
    uint iters = 50;
    uint count = 0;
    uint32_t* data = new uint32_t[nsamples * iters];
    sample* samples = new sample[nsamples];
    for (uint i = 0; i < iters; i++){
        rp.capture_n_continuous(samples, nsamples, period);
        for (uint i = 0; i < nsamples; i++)
            data[count++] = samples[i].time;
    }

    for (uint i = 1; i < iters * nsamples; i++){
        //printf("%u\n", data[i]);
        if (data[i] - data[i-1] != period)
            printf("%d\n", data[i] - data[i-1]);
    }
    

    return 0;
}
