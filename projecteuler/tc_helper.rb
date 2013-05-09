require File.expand_path(File.dirname(__FILE__) + '/helper')
require "test/unit"

class TestProjectEuler < Test::Unit::TestCase
  def test_sum_arithmetic_progression
    assert_equal(0, ProjectEulerHelper.sum_arithmetic_progression(0, 3, 0))
    assert_equal(0, ProjectEulerHelper.sum_arithmetic_progression(0, 3, 1))
    assert_equal(3, ProjectEulerHelper.sum_arithmetic_progression(0, 3, 2))
    assert_equal(9, ProjectEulerHelper.sum_arithmetic_progression(0, 3, 3))
  end
end