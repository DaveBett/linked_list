require_relative "Node"

class LinkedList

  def initialize()
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    if @head.nil?       
      @head = Node.new(value)
      @tail = @head
    else
      @tail = Node.new(value)
      @head.next_node = @tail
    end
    @size += 1
  end

  def prepend(value)
    return self.append(value) if @tail == nil
    @head = Node.new(value, @head)
    @size += 1
  end

  def size()
    return @size
  end

  def head()
    return @head
  end

  def tail()
    return @tail
  end
end