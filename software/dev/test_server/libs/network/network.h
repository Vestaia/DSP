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
    uint32_t rate;
};

class server{
    int server_fd, client_fd;
    struct sockaddr_in s, c;
    socklen_t sockaddr_size = sizeof(s);

    public:
    server();
    ~server();

    //Attach to a local interface and port
    int attach(uint ipv4_interface_addr, ushort ipv4_interface_port);
    int attach(const char* ipv4_interface_addr, ushort ipv4_interface_port);
    template <class T> 
    int send(T *data, size_t size);
    template <class T>
    int recieve(T *data, size_t size);
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
    template <class T>
    int send(T *data, size_t size);
    template <class T>
    int recieve(T *data, size_t size);
    int get_frame(int16_t* data, uint8_t flags, uint32_t samples_offset, uint32_t nsamples, uint32_t rate);

};

template <class T>
int client::send(
        T *data, 
        size_t size
    ){
    return (write(server_fd, data, size) == size) - 1;
}

template <class T>
int client::recieve(
        T *data, 
        size_t size
    ){
    return read(server_fd, data, size);
}


template <class T>
int server::send(
        T *data, 
        size_t size
    ){
    return (write(client_fd, data, size) == size) - 1;
}

template <class T>
int server::recieve(
        T *data, 
        size_t size
    ){
    return (recv(client_fd, data, size, MSG_WAITALL) == size) - 1;
}