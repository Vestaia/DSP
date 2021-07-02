#include "network.h"

client::client(){
    server_fd = socket(AF_INET, SOCK_STREAM, 0);
}
client::~client(){
    close(server_fd);
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

int client::send(
        void *data, 
        ssize_t size
    ){
    return (write(server_fd, data, size) == size) - 1;
}

int client::recieve(
        void *data, 
        ssize_t size
    ){
    ssize_t status;
    ssize_t recd = 0;

    while (recd < size && (status = read(server_fd, (uint8_t*)data + recd, size)) >= 0){
        recd += status;
        //printf("Bytes Recieved: %d \t Bytes Remaining: %d\n", recd, size - recd);
    }
    return (recd == size) - 1;
}
