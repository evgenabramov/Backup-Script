cmake_minimum_required(VERSION 2.8)


project(library)

set(SOURCE_LIB lib.cpp)

add_library(lib STATIC ${SOURCE_LIB})

