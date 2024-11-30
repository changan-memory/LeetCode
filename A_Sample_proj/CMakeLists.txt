
cmake_minimum_required(VERSION 3.5)
project(SWAP)


set(CMAKE_BUILD_TYPE Debug)     # 设置模式 为 Debug 模式

set(CMAKE_CXX_STANDARD 11)      # 设置支持的 C++ 标准


include_directories(${PROJECT_SOURCE_DIR}/include)      # 设置包含的头文件路径

file(GLOB SRC_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)   # 设置源文件路径 将路径内的文件存储在变量 SRC_LIST 中


add_executable(projexe ${SRC_LIST})