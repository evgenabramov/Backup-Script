cmake_minimum_required(VERSION 2.8)

project(library_linker)

set(SOURCE_EXE C/main.cpp)

include_directories(.)

add_executable(main ${SOURCE_EXE})

add_subdirectory(B)

target_link_libraries(main lib)

execute_process(COMMAND python3 "preparing.py" WORKING_DIRECTORY "A/")
