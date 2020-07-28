require './lib/linked_list.rb'
require './lib/node.rb'
require 'minitest/autorun'
require 'minitest/pride'

class LinkedListTest < Minitest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @linked_list
  end

  def test_head_is_nil
    assert_nil @linked_list.head
  end

  def test_append
    @linked_list.append('West')
    assert_instance_of Node, @linked_list.head
    assert_equal 'West', @linked_list.head.surname
    assert_nil @linked_list.head.next_node
    @linked_list.append('Rhodes')
    assert_equal 'Rhodes', @linked_list.head.next_node.surname
  end

  def test_count
    @linked_list.append('West')
    assert_equal 1, @linked_list.count
    @linked_list.append('Rhodes')
    assert_equal 2, @linked_list.count
  end

  def test_to_string
    @linked_list.append('West')
    assert_equal 'The West family', @linked_list.to_string
    @linked_list.append('Rhodes')
    assert_equal 'The West family, followed by the Rhodes family', @linked_list.to_string
  end

  def test_prepend
    @linked_list.append('West')
    @linked_list.append('Rhodes')
    @linked_list.prepend('Henderson')
    assert_equal 'The Henderson family, followed by the West family, followed by the Rhodes family', @linked_list.to_string
    assert_equal 3, @linked_list.count
  end
end
