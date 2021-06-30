#include "network.h"

client::client(){
    server_fd = socket(AF_INET, SOCK_STREAM, 0);
}
client::~client(){
    printf("Destroying Client\n");
    close(server_fd);
    printf("Client Exited\n");
}


int client::connect_to(
        uint ipv4_remote_addr,
        ushort ipv4_remote_port
    ){
    s.sin_family = AF_INET;
    s.sin_addr.s_addr = ipv4_remote_addr;
    s.sin_port = htons(ipv4_remote_port);
    if (connect(server_fd, (struct sockaddr *)&s, sockaddr_size) != 0){
        perror("connect"); 
        close(server_fd);
        server_fd = socket(AF_INET, SOCK_STREAM, 0);
        return -1;
    }
    return 0;
}

int client::connect_to(
        const char* ipv4_remote_addr,
        ushort ipv4_remote_port
    ){
        uint ip;
        if (inet_pton(AF_INET, ipv4_remote_addr, &ip) != 1) {perror("pton"); return -1;}
        return connect_to(ip, ipv4_remote_port);
    }

int client::get_frame(
        int16_t*    data,
        uint8_t     flags,
        uint32_t    t_offset,
        uint32_t    nsamples,
        uint32_t    rate
    ){
    request req;
    req.flags = flags;
    req.t_offset = t_offset;
    req.nsamples = nsamples;
    req.rate = rate;
    if (send(&req, sizeof(req)) < 0){
        perror("Send request:");
        return -1;
    }
    if (recieve(data, sizeof(int16_t) * nsamples) < 0);
    return 0;
}