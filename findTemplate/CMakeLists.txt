# CMake 最低版本号要求
cmake_minimum_required(VERSION 2.8)
# 项目信息
project(wsdCpp)
# 设置C语言标准
SET(CMAKE_C_COMPILER g++)
add_compile_options(-std=c++11)
# 指定生成目标
add_executable(wsdCpp Sort.cc)