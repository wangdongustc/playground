cmake_minimum_required(VERSION 3.17)
project(vcpkg_gtest_sub_folder)

add_executable(calc_test calc_test.cpp)
target_link_libraries(calc_test gtest_main)
target_link_libraries(calc_test glog::glog)
add_test(calc_test calc_test)

add_executable(calc_test_2 calc_test.cpp)
target_link_libraries(calc_test_2 gtest_main)
gtest_add_tests(TARGET calc_test_2)

add_executable(calc_test_3 calc_test.cpp)
target_link_libraries(calc_test_3 gtest_main)
gtest_discover_tests(calc_test_3)

