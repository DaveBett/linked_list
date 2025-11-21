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
    end
  end
end