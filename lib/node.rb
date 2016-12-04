class Node
	attr_reader :data
	attr_accessor :next_node
	def initialize(data, next_node = nil)
		@data = data
		@next_node = next_node
	end
end

# require_relative 'node'
# class LinkedList
# 	attr_reader :head
# 	def initialize
# 		@head = nil
# 	end



# 	def append(data)
# 		"doop"
# 	end

# end