# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# An integer
# What is the output? (i.e. What should the code return?)
# A string with commas in the correct placement
# What are the steps needed to solve the problem?
# 1. Convert number to string
# 2. Determine string length
# 3. RETURN string IF length is less than 4
# 4. Divide length by 3 (return integer)
# 5. IF length is divisible by 3, put (length/3)-1 commas in, every 4 characters
# 6. IF length is not divisible by 3, put length/3 commas in, every 4 characters
# 7. RETURN string


# 1. Initial Solution
def separate_comma(num)
  string = num.to_s
  p len = string.length
  x = (len / 3)
  if len < 4
    p string
  elsif len % 3 == 0
    y = -4
    (x-1).times do |l|
      string.insert(y, ",")
      y -= 4
    end
    p string
  else
    y = -4
    x.times do |l|
      string.insert(y, ",")
      y -= 4
    end
    p string
  end
end



# 2. Refactored Solution



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# => My process for breaking the problem down was to find patterns that could be used
# Was your pseudocode effective in helping you build a successful initial solution?
# => It was effective in the math sense. Jotting down numbers with incrementally larger lengths and visualizing
# how many commas they'd need and where really helped. I would never have been able to keep those figures entirely
# in my mind while I worked on this.
# What Ruby method(s) did you use when refactoring your solution? 
# => I honestly didn't have enough time to finish refactoring this assignment. My strategy was to convert the
# integer to an array first, breaking each individual digit in the number into its own index, counting out where the
# comma should go that way, then flattening the array back into one, then outputting the collapsed array as a string.
# What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? 
# If so, how?
# => I ran out of time experimenting with the different methods that could be implemented to translate the objects to
# arrays and getting the array to function the way I wanted to.
# How did you initially iterate through the data structure?
# => I actually only converted the numbers directly to strings, because it felt unnecessary to transfer it to
# an array and then back to a string, when methods exist that can operate in the way needed on strings. With the
# strings, I used .times with a variable that counted back from the 4th to last place in the string.
# Do you feel your refactored solution is more readable than your initial solution? Why?
# It probably would have been, considering my initial solution is a lot of lines of code, and has lots of use
# of different variables, which might make it hard to follow for the reader. I was hoping to whittle it down to a few
# lines of code with a refactor, but again, just ran out of time.