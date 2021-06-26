#include "network.h"
#include <stdio.h>
#include <thread>
#include <unistd.h>
#include <errno.h>

void run_server(){
    server s = server();
    request req;
    s.attach(INADDR_ANY, 42069);
    while(1){
        if(s.read_request(&req) < 0){
            perror("read_request");
            break;
        }
        uint16_t* data = new uint16_t[req.samples];
        for (int i = 0; i < req.samples; i++){
            data[i] = i;
        }
        s.send(data, req.samples * sizeof(data[0]));
        delete[] data;
    }
}

void run_client(){
    client c = client();
    c.connect_to("127.0.0.1", 42069);
    int samples = 10;
    int16_t* data = new int16_t[samples];
    c.get_frame(data, 0, 0, samples, 0);
    for (int i = 0; i < samples; i++){
        printf("%d\n",data[i]);
    }
    delete[] data;
    samples = 15;
    data = new int16_t[samples];
    c.get_frame(data, 0, 0, samples, 0);
    for (int i = 0; i < samples; i++){
        printf("%d\n",data[i]);
    }
    delete[] data;
}


int main(){
    std::thread server(run_server);
    std::thread client(run_client);
    sleep(2);
    server.join();
    client.join();
    return 0;
}
