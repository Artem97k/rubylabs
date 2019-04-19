require 'minitest/autorun'
require_relative 'logic.rb'
# Test class
class TestLab6 < Minitest::Test
  def setup
    @r = 3
    @res = 18.8495559
    @del1 = 0.001
    @del2 = 0.0001
  end

  def test_1
    assert_in_delta(@res, calc_lgth1(@r, @del1), @del1, 'Fail')
  end

  def test_2
    assert_in_delta(@res, calc_lgth2(@r, @del2), @del2, 'Fail')
  end
end
