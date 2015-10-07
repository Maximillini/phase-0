# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    while min_size > array.length
      array.push(value)
    end
    return array
  end# Your code here
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.map { |x| x}
#   new_array = []
#     array.each do |x|
#       new_array.push(x)
#    end
  if min_size <= new_array.length
    return new_array
  else
    while min_size > new_array.length
      new_array.push(value)      
    end
    return new_array
  end# Your code here
end

# 3. Refactored Solution



# 4. Reflection