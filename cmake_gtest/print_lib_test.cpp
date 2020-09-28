#include "print_lib.h"

#include "gtest/gtest.h"

TEST(TestPrintLib, print_lib) {
    print_abc();
    ASSERT_TRUE(true);
}
