#include <stdio.h>
/*使用socket库进行tcp连接和数据传输*/
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <string.h>

#define MAX_PENDING 5 /* Maximum outstanding connection requests */

void DieWithError(char *errorMessage);

void HandleTCPClient(int clientSocket);

int main(int argc, char *argv[]) {

    /*描述符*/
    int servSock;
    int clntSock;
    /*服务端地址为本地回环地址127.0.0.1*/
    struct sockaddr_in echoServAddr;
    struct sockaddr_in echoClntAddr;
    /*服务端端口号*/
    unsigned short echoServPort;
    /*客户端地址长度*/
    unsigned int clntLen;

    /*必须传入端口号*/
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <Port>\n", argv[0]);
        exit(1);
    }

    echoServPort = atoi(argv[1]); /* First arg: local port */

    /* Create socket for incoming connections */
    if ((servSock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
        DieWithError("socket () failed");

    /* Construct local address structure */
    memset(&echoServAddr, 0, sizeof(echoServAddr)); /* Zero out structure */
    echoServAddr.sin_family = AF_INET; /* Internet address family */
    echoServAddr.sin_addr.s_addr = htonl(INADDR_ANY); /* Any incoming interface */
    echoServAddr.sin_port = htons(echoServPort); /* Local port */

    /* Bind to the local address */
    if (bind(servSock, (struct sockaddr *) &echoServAddr, sizeof(echoServAddr)) < 0)
        DieWithError("bind () failed");
    else
        printf("bind succeed!\n");

    /* Mark the socket so it will listen for incoming connections */
    if (listen(servSock, MAX_PENDING) < 0)
        DieWithError("listen() failed");
    else
        printf("listen succeed!\n");

    for (;;) /* Run forever */
    {
        /* Set the size of the in-out parameter */
        clntLen = sizeof(echoClntAddr);
        /* Wait for a client to connect */
        if ((clntSock = accept(servSock, (struct sockaddr *) &echoClntAddr, &clntLen)) < 0)
            DieWithError("accept() failed");
        /* clntSock is connected to a client! */
        printf("Handling client %s\n", inet_ntoa(echoClntAddr.sin_addr));
        HandleTCPClient(clntSock);
    }
    /* NOT REACHED */
}
