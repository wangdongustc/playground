#include "glog/logging.h"
#include "gtest/gtest.h"
#include "gtest/gtest-death-test.h"

TEST(CalcTest, test_true) {
    ASSERT_TRUE(true);
}

TEST(CalcTest, test_false) {
    ASSERT_FALSE(false);
    ASSERT_TRUE(true);
}
