require 'minitest/autorun'
require 'minitest/pride'
require './lib/custom_array'

class CustomArrayTest < Minitest::Test
  def test_custom_array_class_exists
    assert_instance_of CustomArray, CustomArray.new()
  end

  def test_it_can_flatten_empty_array
    assert_equal [], CustomArray.new([]).flatten
  end

  def test_it_can_flatten_single_element
    assert_equal ["a"], CustomArray.new(["a"]).flatten
  end

  def test_it_can_flatten_nested_array
    assert_equal ["a", "b"], CustomArray.new([["a", "b"]]).flatten
  end

  def test_it_can_flatten_two_nested_arrays
    assert_equal ["a", "b", "c", "d"], CustomArray.new([["a", "b"], ["c", "d"]]).flatten
  end

  def test_it_can_flatten_two_nested_arrays_and_single_string
    assert_equal ["a", "b", "c", "d", "e"], CustomArray.new([["a", "b"], ["c", "d"], "e"]).flatten
  end

  def test_general
    test_input = [[1,2],["b",[4,"s"]]]
    test_flatten = CustomArray.new(test_input)
    assert_equal test_input.flatten, test_flatten.flatten
  end
end
