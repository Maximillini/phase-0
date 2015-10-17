# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: list of strings to label each die side
# Output: a complete virtual die that can tell the amount of sides based on the labels
# and roll to return a random side.
# Steps: 
#1. Initialize die with label input
#2. IF number of labels is less than 1, RAISE ARGUMENT ERROR
#3. DEFINE sides as length of input list of labels
#4. SHUFFLE list of labels to randomly select one


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    unless @labels.length >= 1
      raise ArgumentError.new("Please label the die!")
    end
  end

  def sides
    @sides = @labels.length
    p @labels.length
  end

  def roll
    p @labels.shuffle[0]
  end
end



# Refactored Solution

class Die
  
  attr_reader :sides, :roll

  def initialize(labels)
    @labels = labels
    @sides = @labels.length
    @roll = @labels.shuffle[0]
    unless @sides >= 1
      raise ArgumentError.new("Please label the die!")
    end
  end
  # def roll
  #   p @labels.shuffle[0]
  # end
end






# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation?
# Did you need to change much logic to get this to work?
#
# => There actually wasn't much difference between this version and last week's version. The main difference
# was that I had to assign the sides variable to the length of the array, and the roll was more easily done with
# the shuffle method.
#
# What does this exercise teach you about making code that is easily changeable or modifiable?
#
# => It teaches me that the simpler and cleaner you make your code, the easier it is to find problems or come
# up with new working solutions.
# 
# What new methods did you learn when working on this challenge, if any?
#
# => I didn't use any methods I wasn't already familiar with. I had used .shuffle for the Accountability Group
# Generator challenge last week.

# What concepts about classes were you able to solidify in this challenge?
#
# => I was better able to understand how the methods were working under the hood with instance variables,
# since they weren't as simply defined this time around, and required more than just a variable assignment.