require 'minitest/autorun'
require_relative 'logic.rb'
# Test class
class TestLab7pt1 < Minitest::Test
  def setup
    @name = 'file.txt'
    @s1 = 'zdes dolzhno bit rovno tri slova'
    @s2 = 'ololol hjf hajrjek jaf'
  end

  def test_1
    f = File.new(@name, 'w')
    f.write(@s1)
    f.close
    assert_equal(3, count(@name), 'Fail')
  end

  def test_2
    f = File.new(@name, 'w')
    f.write(@s2)
    f.close
    assert_equal(2, count(@name), 'Fail')
  end
end
