class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(surname)
    node = Node.new(surname)
    @head = node if !@head
  end

  def count
    return 0 if !@head
    count = 1
    current_node = @head
    while current_node.next_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    'The' + @head.surname + 'Family'
  end
end
