require "./lib/LinkedList"

list = LinkedList.new()
list.append("Beaver")
list.append("Cat")

list.prepend("Ant")

list.contains?("Cat")
list.contains?("Dragon")

list.find("Cat")
list.find("Elephant")

list.insert_at("Sheep", 2)

p list.to_s