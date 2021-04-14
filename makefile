CC=gcc
CFLAGS=-Wall

all: TCPFileClient TCPFileServer

OTHER_OBSS = DieWithError.o HandleTCPClient.o

TCPFileClient :	TCPFileClient.o	$(OTHER_OBSS)

TCPFileServer :	TCPFileServer.o	$(OTHER_OBSS)

DieWithError.o : DieWithError.c
				CC -c DieWithError.c -std=c11

HandleTCPClient.o : HandleTCPClient.c
				CC -c HandleTCPClient.c -std=c11

TCPFileClient.o: TCPFileClient.c
				CC -c TCPFileClient.c -std=c11

TCPFileSever.o: TCPFileSever.c 
				CC -c TCPFileSever.c -std=c11

clean:
		rm -f	TCPFileClient.o	DieWithError.o HandleTCPClient.o TCPFileServer.o
