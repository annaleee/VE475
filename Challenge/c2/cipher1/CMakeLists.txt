cmake_minimum_required(VERSION 3.19)
project(cipher1 C)

set(CMAKE_C_STANDARD 11)

add_executable(cipher1 main.c AES.c AES.h)