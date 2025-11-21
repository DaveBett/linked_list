require_relative "Node"

class LinkedList

  def initialize()
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?       
      @head = Node.new(value)
      @tail = @head
    else
      @tail = Node.new(value)
      @head.next_node = @tail
    end
  end

  def prepend(value)
    return self.append(value) if @tail == nil
    @head = Node.new(value, @head)
  end
end