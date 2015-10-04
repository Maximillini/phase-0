# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
	return [] if both_empty?(array_1, array_2)
	return array_1 if two_empty?(array_1, array_2)
	return array_2 if one_empty?(array_1, array_2)
	for x in array_2[0..-1]
		array_1 << x
	end
	return array_1
end

def both_empty?(array_1, array_2)
	array_1.length == 0
	array_2.length == 0
end

def one_empty?(array_1, array_2)
	array_1.length == 0
end

def two_empty?(array_1, array_2)
	array_2.length == 0
end

puts "Original List:" 
array_1 = ["Oranges", "Chicken", "Onions"]
puts array_1
puts "Your additional items are:"
array_2 = ["Beef", "Broccoli", "Eggs"]
puts array_2
puts "Your updated list is:"
puts array_concat(array_1, array_2)


