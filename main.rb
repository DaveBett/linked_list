require "./lib/LinkedList"

list = LinkedList.new()
list.append(2)
list.append(3)

list.prepend(1)

puts list.at(1)
