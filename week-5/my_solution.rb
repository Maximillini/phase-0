# Pad an Array

# I worked on this challenge [with Nicole Yee]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

#Input: list of numbers, a minimum length of the list, and a value to pad the list with
#Output: a new expanded list
# IF min_size is less than the length of the list of numbers, return list of numbers
# WHILE the minimum length is greater than the length of the list of numbers, add the value parameter to the list of numbers


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    while min_size > array.length
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
    array.each do |x|
      new_array.push(x)
    end
  if min_size <= new_array.length
    return new_array
  else
    while min_size > new_array.length
      new_array.push(value)      
    end
    return new_array
  end
end


# 3. Refactored Solution
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
  end
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# => We were pretty successful at breaking it down. We were a little broad in our original psuedocode, but even breaking it down into
# => medium sized chunks allowed us to realize the code we needed to expand on later.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => As I said in the previous answer, we were able to translate our psuedocode pretty easily, but we had to expand on it a bit
# => to make our method non-destructive, and moreso when our first solution didn't quite work as planned. I think the psuedocode was successful
# => at giving us a good starting point.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => Our initial solution for the destructive method worked perfectly, but our non-destructive method w
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => We were able to find and utilize the .map method to create our non-destructive method by moving our array values into a new array.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think our code is fairly readable, we chose to comment out our original solution to make it easier to tell the difference with our refactored
# => solution, which makes the code overall a little harder to read, but that was only for the purposes of this exercise. I think our variable has a
# => logical and descriptive name.
# What is the difference between destructive and non-destructive methods in your own words?
# => A destructive method is simply one that will permanently alter the values that you apply the method to, whereas a non-destructive will
# => retain the original values for later call-back.