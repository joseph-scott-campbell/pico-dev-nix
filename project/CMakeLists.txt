cmake_minimum_required(VERSION 3.13...3.27)

include(pico_sdk_import.cmake)
project(project C CXX ASM)
set(CMAKE_C STANDARD 11)
set(CMAKE_CXX STANDARD 17)

pico_sdk_init()

add_executable(project
    pico.c
)

pico_enable_stdio_usb(project 1)
pico_enable_stdio_uart(project 0)

pico_add_extra_outputs(project)

target_include_directories(project PRIVATE ${CMAKE_CURRENT_LIST_DIR} )
target_link_libraries(project pico_stdlib)
