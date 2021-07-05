cmake_minimum_required(VERSION 3.19)
project(cipher2)

set(CMAKE_CXX_STANDARD 20)

add_executable(cipher2 main.cpp RC4.cpp RC4.h)