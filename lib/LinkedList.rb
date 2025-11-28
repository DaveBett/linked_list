require 'pry'
require 'pry-byebug'
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
      old_tail = @tail
      @tail = Node.new(value)
      old_tail.next_node = @tail
    end
    @size += 1
  end

  def prepend(value)
    return self.append(value) if @tail == nil
    @head = Node.new(value, @head)
    @size += 1
  end

  def size()
    @size
  end

  def head()
    @head.value
  end

  def tail()
    @tail.value
  end

  def at(index)
    return "Index not found" if index >= size
    index = index + @size if index < 0 
    current_index = 0
    current_node = @head
    while current_index <= index
      return current_node if current_index == index
      current_index += 1
      current_node = current_node.next_node
    end
  end

  def pop()
    return nil if @head.nil?
    popped = @tail
    if @size == 1
      @head = nil
    else
      @tail = self.at((@size - 2))
      @tail.next_node = nil
    end
    @size -= 1
    popped.value
  end

  def contains?(value)
    current_index = 0
    current_node = @head
    while current_index < @size
      return true if current_node.value == value
        current_index += 1
        current_node = current_node.next_node
    end
    return false
  end

  def find(value)
    current_index = 0
    current_node = @head
    while current_index < @size
      return current_index if current_node.value == value
      current_index += 1
      current_node = current_node.next_node
    end
    return nil
  end

  def to_s
    current_index = 0
    current_node = @head
    string = ""
    while current_index < @size
      string += "(#{current_node.value}) -> "
      current_index += 1
      current_node = current_node.next_node
    end
    string += "nil"
    return string
  end


end