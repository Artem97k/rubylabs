require 'minitest/autorun'
require_relative 'logic.rb'
# Test class
class TestLab5 < Minitest::Test
  def setup
    @str1 = [
      'stringwithnochanges',
      'string431with2ampersandsubstrings4151',
      '4318string481withunevenamount414321ofgroups'
    ]
    @str2 = ['only1string']
  end

  def test_1
    @res1 = [
      'stringwithnochanges',
      'string&&&&&&with2ampersandsubstrings&&&&&&',
      '4318string481withunevenamount414321ofgroups'
    ]
    assert_equal(@res1, func(@str1), 'Fail')
  end

  def test_2
    @res2 = ['only1string']
    assert_equal(@res2, func(@str2), 'Fail')
  end
end
