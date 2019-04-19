require 'minitest/autorun'
require_relative 'logic.rb'
# Test class
class TestLab6 < Minitest::Test
  def setup
    @f1 = proc { |x| Math.cos(x) }
    @f2 = ->(x) { Math.sin(x * x) }
    @x1 = 0
    @y1 = 0
    @x2 = 0
    @x1 = 1
  end

  def test_1
    assert(neibr(0, 1, @f1), 'Fail')
  end

  def test_2
    assert(neibr(0, 0, @f2), 'Fail')
  end
end
