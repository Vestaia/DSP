#include "network.h"

server::server(){
	//Create socket
    server_fd = socket(AF_INET, SOCK_STREAM, 0);
	int optval = 1;
    setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(int));

    //Set non-blocking (Why?)
    // int flags = fcntl(server_fd, F_GETFL) | O_NONBLOCK;
    // fcntl(server_fd, F_SETFL, flags);
}

server::~server(){
    printf("Destroying Server\n");
    close(server_fd);
    close(client_fd);
    printf("Server Exited\n");
}

int server::attach(
        uint ipv4_interface_addr, 
        ushort ipv4_interface_port
    ){
    s.sin_family = AF_INET;
    s.sin_addr.s_addr = ipv4_interface_addr;
    s.sin_port = htons(ipv4_interface_port);

    if (bind(server_fd, (sockaddr*)&s, sockaddr_size) < 0) return -1;
    if (listen(server_fd, 1) < 0) return -2;
    if ((client_fd = accept(server_fd, (sockaddr*)&s, &sockaddr_size)) < 0) return -3;
    return 0;
}

int server::attach(
        const char* ipv4_interface_addr, 
        ushort ipv4_interface_port
    ){
    uint ip;
    if (inet_pton(AF_INET, ipv4_interface_addr, &ip) != 1) return -1;
    return attach(ip, ipv4_interface_port);
}
    

int server::read_request(request* req){
    return (recieve(req, sizeof(request)));
}
