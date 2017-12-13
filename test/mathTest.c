#include "../unity/extras/fixture/src/unity_fixture.h"
#include "../mathLib/mathFunc.h"

TEST_GROUP(Math);


TEST_SETUP(Math){
}

TEST_TEAR_DOWN(Math){

}

TEST(Math, AdditionPositivInt)
{
  TEST_ASSERT_EQUAL_FLOAT(4.0, add(2.0, 2.0));
}
TEST(Math, AdditionNegativeInt)
{
  TEST_ASSERT_EQUAL_FLOAT(-4.0, add(-2.0, -2.0));
}

TEST(Math, SubtractionPositivInt){
  TEST_ASSERT_EQUAL_FLOAT(4.0, sub(8.0, 4.0));
}
