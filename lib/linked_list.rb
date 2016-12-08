
class LinkedList		  
	attr_reader :head, :count
	
	def initialize
		@head = nil
		@count = 0	
	end

	def append(data)
		@count += 1
		if 
			@head == nil
			@head = Node.new(data)

		else 
			current_node = @head
			current_node = current_node.next_node until 
			current_node.next_node == nil
			current_node.next_node = Node.new(data)	
		end				
	end

	def to_string
		sounds = ""
		current_node = @head
		sounds << current_node.data

		until current_node.next_node == nil
		current_node = current_node.next_node
		sounds << " #{current_node.data}" 
		end
		sounds
	end

	def prepend(data)
		@count += 1
		prepend_node = Node.new(data)
		prepend_node.next_node = @head
		@head = prepend_node
		prepend_node.data
	end

	def insert(position, data)
		current_node = @head
    	(position - 1).times do
      	current_node = current_node.next_node
    	end
    	temp_node = current_node.next_node
    	temp_node = Node.new(data)
    	temp_node.next_node = temp_node
    	data
  end

  	def find(position, nodes)
  		current_node = @head
  		find_sounds = ""
  		position.times do 
  			current_node = current_node.next_node
  		end
  		nodes.times do 
  			find_sounds += current_node.data
  			current_node = current_node.next_node
  			find_sounds += " "
  		end
  		find_sounds.strip
  	end

  	def includes?(sound)
    current_node = @head

    until current_node == nil do
      return true if current_node.data == sound
      current_node = current_node.next_node
    end
    false
  end

  def pop(remove_sound)
  	current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
	end
	temp_node = current_node.next_node
	current_node.next_node = nil

	temp_node
	end
end


