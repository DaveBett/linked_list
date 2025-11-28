require "./lib/LinkedList"

list = LinkedList.new()
list.append("Beaver")
list.append("Cat")

list.prepend("Ant")

list.contains?("Cat")
list.contains?("Dragon")
