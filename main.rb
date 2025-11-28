require "./lib/LinkedList"

list = LinkedList.new()
list.append("Beaver")
list.append("Cat")

list.prepend("Ant")

list.contains?("Cat")
list.contains?("Dragon")

list.find("Cat")
list.find("Elephant")

puts list.to_s