# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:1
# ============================================================
p array.at(1).at(1).at(2).at(0)


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20, 25, 30], 35]

# Initial Solution
x = 0
while x < number_array.length
  if number_array[x].is_a? Integer
    number_array[x] += 5
  elsif number_array[x].is_a? Array
    number_array[x] = number_array[x].map {|sub| sub += 5}
  end
  x += 1
end

# Refactored Solution 
number_array = number_array.map do |element|
  if element.is_a? Integer
    element + 5
  elsif element.is_a? Array
    element.map {|sub| sub + 5}
  end
end


# Reflection:
# What are some general rules you can apply to nested arrays?
#
# => Some general rules that can be applied to nested arrays is that first of all, they mostly
# act like normal arrays. You can call indexes of nested arrays, and get an index from inside a sub-array
# by chaining a method like so array[0][1], which says for the sub-array at index zero, give me the element
# at index one in that sub-array.
#
# What are some ways you can iterate over nested arrays?
#
# => You can iterate over nested arrays using nested enumerable methods like .each or .map, in a similar way
# you would to iterating over a normal array. For instance, for an array like this: [[1, 2], [3, 4]]
# you would start by saying array.each do |x|, then for x you would do .each again to manipulate the elements
# in the sub-array.
#
# Did you find any good new methods to implement or did you re-use 
# one you were already familiar with? What was it and why did you decide that was a good option?
#
# => We chose to use .map to iterate over nested arrays in order to capture and return a modified array.
#
