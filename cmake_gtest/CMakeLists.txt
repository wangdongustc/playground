cmake_minimum_required(VERSION 3.17)
project(cmake_gtest)

set(CMAKE_CXX_STANDARD 20)

enable_testing()
find_package(GTest REQUIRED)

find_package(glog REQUIRED)

add_library(print_lib print_lib.cpp print_lib.h)

# Test with Gtest
add_library(gtest_main gtest_main.cpp)
target_link_libraries(gtest_main glog::glog GTest::GTest)

add_executable(print_lib_test print_lib_test.cpp)
target_link_libraries(print_lib_test print_lib)
target_link_libraries(print_lib_test gtest_main)
add_test(print_lib_test print_lib_test)

add_executable(cmake_gtest main.cpp)
target_link_libraries(cmake_gtest print_lib)

add_subdirectory(sub_folder)
