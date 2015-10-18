# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer guess
# Output: an answer depending on if the guess was low, high, or correct
# Steps:
# 1. Initialize an answer integer
# 2. Intake a guess integer
# 3. Compare guess to answer to determine if the guess is higher or lower than the answer, or spot on
# 4. Game is solved if guess equals answer 


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    @num = num
    if @num > @answer
      :high
    elsif @num < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    @num == @answer
  end
end




# Refactored Solution

# I honestly can't think of anything to refactor this any further. This was my initial solution, and
# I feel that it's about as clear and DRY as possible.




# Reflection
# How do instance variables and methods represent the characteristics and behaviors 
# (actions) of a real-world object?

# => Instance variables are like an object in that they exist to have things done to them as carried out
# by the method 'behaviors.'

# When should you use instance variables? What do they do for you?

# => Instance variables should be used to transfer values between methods in a class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# => I didn't really have any trouble with the flow control, I just used code that felt the most natural to me.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# => The benefits of using symbols is that they're immutable, and act kind of like integers.