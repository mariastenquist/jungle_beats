class JungleBeat

  attr_reader :linked_list
  
  def initialize
    @linked_list = LinkedList.new
  end

  def append(data)
    data.split(" ").map do |word|
      linked_list.append(word)
    end
    data
  end

  def count
    linked_list.count
  end

  def play
    beats = linked_list.to_string
    'say -r 500 -v Boing "#{beats}"'
    "#{beats}"
  end
end