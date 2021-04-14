cmake_minimum_required(VERSION 3.17)
project(ThreadPool)

set(CMAKE_CXX_STANDARD 11)

add_executable(TCPFileTransfer DieWithError.c HandleTCPClient.c TCPFileClient.c TCPFileServer.c)