require "./lib/LinkedList"

list = LinkedList.new()
list.append("Beaver")
list.append("Cat")

list.prepend("Ant")

puts list.at(1)

list.append("Balloon")
list.pop
