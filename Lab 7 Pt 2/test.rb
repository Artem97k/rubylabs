require 'minitest/autorun'
require_relative 'logic.rb'
# Test class
class TestLb7pt2 < Minitest::Test
  def setup
    @x = 4
    @y = 4
    @z = 6
    @v = 96
    @a = Rect.new(@x, @y)
    @b = Parr.new(@x, @y, @z)
  end

  def test_1
    assert(@a.square?, 'Fail')
  end

  def test_2
    assert_equal(@v, @b.volume, 'Fail')
  end
end
