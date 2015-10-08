# Initial Input: Grocery item and quantity, 
# Initial Output: list of items with quantity 
# 
#
# Input: Item, quantity
# Output: updated list
#
# 
# Input: Item
# Output: Item deleted from the list
# IF input is equal to a food item in list, remove food from list
#
# Input: Quantity
# Output: Updated quantity for list
# 
#
# Output: Print list

def grocery_list(food, quantity)
  groceries = Hash.new
  groceries[food] = quantity
  p groceries
end

def new_item(list, food, quantity)
  list[food] = quantity
  puts list
end

def delete_item(list, food)
  list.delete(food)
  puts list
end

def update_total(list, food, quantity) 
  list[food] = quantity
  puts list
end

def print_list(list)
  list.each do |key, value|
    puts "#{key}: #{value}"
  end
end

list = grocery_list("Lemonade", 2)
new_item(list, "Tomatoes", 3)
new_item(list, "Onions", 1)
new_item(list, "Ice Cream", 2)
delete_item(list, "Lemonade")
update_total(list, "Ice Cream", 1)
print_list(list)

# What did you learn about pseudocode from working on this challenge?
# => Honestly, I didn't find this challenge to require pseudocoding. I know that we should get into the habit
# so that we'll be ready for harder problems coming at us, but I find it hard to pseudocode a method that has
# one line of code.
#
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => We decided to use hashes for this challenge, since the lists were comprised of an item and a value associated
# with that item. Lists with associated values are much easier to conceptualize and manage as hashes. The trade-off
# was our limited knowledge and experience with hashes as opposed to the practice we've gotten with arrays. Due to
# arrays simply being an unordered list, they are simpler to understand and manipulate in my opinion.
#
# What does a method return?
# => a method will return the last line of code before the end keyword, unless the return is specifically
# called before then.
#
# What kind of things can you pass into methods as arguments?
# => Essentially any ruby object can be passed in as arguments, including integers, strings, arrays, hashes,
# and as we saw in this challenge, local variables.
#
# How can you pass information between methods?
# => Information can be passed between methods by using local variables to define the output of one method outsicde
# of a method. After that, the variable can then be called as an argument for other methods.
#
# What concepts were solidified in this challenge, and what concepts are still confusing?
# => For me, the concept of hash creation and manipulation was solidified, since I had only worked on it in one
# challenge last week. The concept of local variables and methods were also solidified. Before this challenge,
# I was only used to writing methods that did not pass information between them, so this challenge was a huge
# help in understanding how to do that. I'd say the thing I'm still confused about is the practical applications
# of p vs. print vs. puts when trying to get a useful output, but more experimentation and research will help.
