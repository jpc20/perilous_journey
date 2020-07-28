class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(surname)
    node = Node.new(surname)
    @head = node and return if !@head
    current_node = @head
    while current_node.next_node
      current_node = current_node.next_node
    end
    current_node.next_node = node
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
    str = 'The ' + @head.surname + ' family'
    current_node = @head.next_node
    while current_node
      str += (', followed by the ' + current_node.surname + ' family')
      current_node = current_node.next_node
    end
    str
  end
end
