require "./lib/LinkedList"

list = LinkedList.new()
list.append(2)
list.append(3)

list.prepend(1)

p list
puts list.size
puts list.head
puts list.tail
