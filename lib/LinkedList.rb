require_relative "Node"

attr_accessor :head, :tail

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
    
  end
end