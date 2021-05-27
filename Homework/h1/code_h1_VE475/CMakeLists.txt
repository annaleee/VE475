cmake_minimum_required(VERSION 3.17)
project(code_h1_VE475)

set(CMAKE_CXX_STANDARD 14)

add_executable(code_h1_VE475 main.cpp)
add_executable(code mainsy.cpp)
include_directories("/usr/local/include")
target_link_libraries(code_h1_VE475 "/usr/local/lib/libgmp.a")
target_link_libraries(code "/usr/local/lib/libgmp.a")

