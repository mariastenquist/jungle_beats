require "minitest/autorun"
require "minitest/pride"
require "./lib/node"

class NodeTest < MiniTest::Test 
	def test_class_exists
		node = Node.new("plop")
		assert_instance_of Node, node
	end

	def test_it_can_access_data
		node = Node.new("plop")
		assert_equal "plop", node.data

	end

	def test_if_next_node_is_nil
		node = Node.new("plop")
		assert_nil node.next_node
	end

	def test_it_can_access_different_data
		node = Node.new("zippy")
		assert_equal "zippy", node.data
	end
end

