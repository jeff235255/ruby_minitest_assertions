require 'minitest/autorun'
require './blog'

class BlogTest < Minitest::Test 
  def setup
    @blog = Blog.new
  end

  def test_title_is_railsmaster
    assert_equal "Rails master blog", @blog.title
  end

  def test_assert_is_empty
    # we putted an empty array to assert_empty
    # and of course the test will pass
    assert_empty []
  end

  def test_assert_is_nil
    # we putted a nil object  to assert_nil
    # and of course the test will pass
    assert_nil nil
  end

  def test_assert_equal
    # expect 3 value
    assert_equal 3, @blog.plus_one_with_two
  end

  def test_assert_in_denta
    # the results are within delta of each other.
    assert_in_delta (22.0 / 7.0), @blog.comparing_float_numbers, 0.01
  end

  def test_assert_includes
    # it pass if array included the @blog.is_included_object object
    assert_includes ["Rspec", "MiniTest", "UnitTest"], @blog.is_included_object
  end
end