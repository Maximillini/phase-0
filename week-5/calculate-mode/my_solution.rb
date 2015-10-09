# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? List of numbers or strings
# What is the output? The most common number(s) or string(s) in the list
# What are the steps needed to solve the problem?
# Convert list of elements into elements and number of times they occur
# Find the highest number of occurrences for elements in original list
# Move elements with highest number of occurrences to new list
# Return list

# 1. Initial Solution

def mode(array)
  counter = Hash.new(0)
  array.each do |i|
    counter[i] += 1
  end
  mode_list = []
  counter.each do |k, v|
    if v == counter.values.max
    mode_list << k
    end
  end
  mode_list
end

# 3. Refactored Solution

def mode(array)
counter = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
max = counter.values.max
counter.select { |k, v| v == max}.keys	
end



# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# => We chose to start with an array, but convert it to a hash. We found that it would be the easiest way to
# count up the number of occurrences of elements in an array, by holding the number of the occurrences as the
# value to the array element's key.
#
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# => Honestly, no. It took a lot of trial and error and guessing to get to where we were, and although we finally got there
# it wasn't because of the pseudocode. I seem to need more practice.
#
# What issues/successes did you run into when translating your pseudocode to code?
# => My main issue with pseudocode is that if my first ideas that I've established with it don't work, I tend to
# work at the code that I now have, rather than go back to the pseudo, which renders it useless if I don't get it
# right immediately.
#
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? 
# Were they difficult to implement?
# => We mainly used the each do iteration for the initial solution, since it was cleanest and simplest. However,
# for the refactoring, we discovered a few methods in both the WGR and the Ruby Docs online resource. We found that
# inject and select were able to shorten the code significantly.
#
#