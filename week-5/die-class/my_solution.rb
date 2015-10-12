# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: a number of sides for a new die object
# Output: a new die object with the determined amount of sides, able to be rolled or have its
# number of sides inspected
# Steps:
# 1. initialize the die with a set amount of sides
# => IF number of sides is less than 1, return an error message that explains the required number of sides
# 2. define sides as number of sides input
# 3. have the die give a random number between 1 and the number of sides of the die.
# 4. have the die give us the number of sides when asked.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless sides >= 1 #SHOULDN'T THIS BE >1?? How is a one-sided die physically possible??
      raise ArgumentError.new("The amount of sides must be a positive integer!")
    end
  end

  def sides
  	@sides
  end

  def roll
    p rand(1..@sides)
  end
end



# 3. Refactored Solution
# I didn't have time to find the best refactoring for this challenge. I did however attempt it using
# attr_accessor/reader/writer instance variable definition, but couldn't get it to work properly.



# 4. Reflection
# What is an ArgumentError and why would you use one?
# => An argument error is when the argument given doesn't fit the desired input and output. For instance, if your
# program is designed to look for the length of a string, and the argument you pass in is an integer, that would be
# an ArgumentError. Another example is if you tried to pass in two strings to find the length, where the method is
# expecting one.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => rand is a new Ruby method I used. 
# What is a Ruby class?
# => A class in Ruby is an object that groups repeatable and variable behaviors. It can be thought of like a blue print
# that can rapidly create many new instances of objects.
# Why would you use a Ruby class?
# => Their most common use is, like I said above, to efficiently recreate behaviors. A class is an object that you can use over
# and over again with different inputs to get a common, but variable output.  
# What is the difference between a local variable and an instance variable?
# => A local variable is just how it sounds: it's confined to a local area, in this case, a method or environment. However,
# an instance variable is one that can be used throughout the class.
# Where can an instance variable be used?
# => An instance variable can be used anywhere within a class.