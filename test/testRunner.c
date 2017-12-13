#include "../unity/extras/fixture/src/unity_fixture.h"

TEST_GROUP_RUNNER(Math)
{
  RUN_TEST_CASE(Math, AdditionPositivInt);
  RUN_TEST_CASE(Math, AdditionNegativeInt);
  RUN_TEST_CASE(Math, SubtractionPositivInt);
}
