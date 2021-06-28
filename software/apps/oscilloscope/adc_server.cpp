#include "network.h"
#include "fpga_driver.h"

int main(){
    pwp_fpga rp = pwp_fpga();
    server s = server();
    request req;
    s.attach(INADDR_ANY, 42069);
    while(1){
        if(s.read_request(&req) < 0){
            perror("read_request");
            break;
        }
        uint16_t* data = new uint16_t[req.nsamples];
        sample* samples = new sample[req.nsamples];
        //rp.capture_n_raw(samples, req.nsamples);
        for (int i = 0; i < req.nsamples; i++){
            data[i] = i;
        }
        s.send(data, req.nsamples * sizeof(data[0]));
        delete[] data;
        delete[] samples;
    }
    return 0;
}