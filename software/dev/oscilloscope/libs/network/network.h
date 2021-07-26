#pragma once
#include <sys/socket.h>
#include <arpa/inet.h> 
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
struct request{
    uint8_t flags; // Valid | Trigger | ...
    uint32_t t_offset;
    uint32_t nsamples;
    uint32_t period;
};

class server{
    int server_fd, client_fd;
    struct sockaddr_in s;
    socklen_t sockaddr_size = sizeof(s);

    public:
    server();
    ~server();

    //Attach to a local interface and port
    int attach(uint ipv4_interface_addr, ushort ipv4_interface_port);
    int attach(const char* ipv4_interface_addr, ushort ipv4_interface_port);
    int send(void* data, size_t size);
    int recieve(void* data, size_t size);
    int read_request(request* req);
};

class client{
    int server_fd;
    struct sockaddr_in s;
    socklen_t sockaddr_size = sizeof(s);

    public:
    client();
    ~client();

    int connect_to(uint ipv4_remote_addr, ushort ipv4_remote_port);
    int connect_to(const char* ipv4_remote_addr, ushort ipv4_remote_port);
    int send(void* data, size_t size);
    int recieve(void* data, size_t size);
    template <class T>
    int get_frame(T* data, uint8_t flags, uint32_t samples_offset, uint32_t nsamples, uint32_t period);
};


template <class T>
int client::get_frame(
        T*    data,
        uint8_t     flags,
        uint32_t    t_offset,
        uint32_t    nsamples,
        uint32_t    period
    ){
    request req;
    req.flags = flags;
    req.t_offset = t_offset;
    req.nsamples = nsamples;
    req.period = period;
    if (send(&req, sizeof(req)) < 0){
        perror("Send request:");
        return -1;
    }
    if (recieve(data, sizeof(T) * nsamples) < 0) {
        return -1;
    }
    return 0;
}