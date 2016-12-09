require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"
require "./lib/node"
require "pry"

class LinkedListTest < MiniTest::Test

	def test_linked_list_exists
		assert_instance_of LinkedList, LinkedList.new  
	end

	def test_linked_list_head_equal_nil
		linked_list = LinkedList.new
		assert_equal nil, linked_list.head
	end

	def test_linked_list_can_store_data
		linked_list = LinkedList.new
		linked_list.append("doop")
		assert_equal "doop", linked_list.head.data
	end

	def test_if_the_next_node_is_nil
		linked_list = LinkedList.new
		linked_list.append("something")
		assert_equal nil, linked_list.head.next_node
	end

	def test_it_can_count_nodes
		linked_list = LinkedList.new
		linked_list.append("doop")
		assert_equal 1, linked_list.count
		# binding.pry
	end

	def test_list_can_stringify
		linked_list = LinkedList.new
		linked_list.append("doop")
		assert_equal "doop", linked_list.to_string
	end

	def test_if_list_can_append_more_than_one_data
		linked_list = LinkedList.new
		linked_list.append("doop")
		linked_list.append("deep")
		assert_equal "deep", linked_list.head.next_node.data
		# binding.pry
	end

	def test_that_list_has_another_node_added
		linked_list = LinkedList.new
		linked_list.append("doop")
		linked_list.append("deep")
		assert_equal 2, linked_list.count
	end

	def test_that_added_nodes_still_stringify
		linked_list = LinkedList.new
		linked_list.append("doop")
		linked_list.append("deep")
		assert_equal ("doop deep"), linked_list.to_string
	end

	def test_append_prepend_more_data_points
		linked_list = LinkedList.new 
		linked_list.append("plop")
		linked_list.append("suu")
		linked_list.prepend("dop")
		assert_equal ("dop plop suu"), linked_list.to_string
	end

	def test_insert_data_to_middle
		linked_list = LinkedList.new
		linked_list.append("plop")
		linked_list.append("suu")
		linked_list.prepend("dop")
		assert_equal "woo", linked_list.insert(1, "woo")
	end

	def test_find_method
    	linked_list = LinkedList.new
    	linked_list.append("deep")
    	linked_list.append("woo")
    	linked_list.append("shi")
    	linked_list.append("shu")
    	linked_list.append("blop")
    	assert_equal "shi", linked_list.find(2, 1)
	end
	def test_find_another_position
		linked_list = LinkedList.new
		linked_list.append("deep")
    	linked_list.append("woo")
    	linked_list.append("shi")
    	linked_list.append("shu")
    	linked_list.append("blop")
    	assert_equal "woo shi shu", linked_list.find(1,3)
    end

    def test_includes_a_specific_sound
    	linked_list = LinkedList.new
    	linked_list.append("deep")
    	assert_equal true, linked_list.includes?("deep")
    	refute linked_list.includes?("dep")
    end

    def test_pop_a_sound_off
    	linked_list = LinkedList.new
    	linked_list.append("deep")
    	linked_list.append("woo")
    	linked_list.append("shi")
    	linked_list.pop("blop")
    	linked_list.pop("shu")
    	assert_equal "deep woo shi", linked_list.to_string
    end

end
