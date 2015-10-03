# Factorial

# I worked on this challenge [with: Kris Bies, Max Iniguez].


# Your Solution Below
def factorial(number)
  if number == 1
    1
  elsif number == 0
  	1  
  else
    number * factorial(number-1) 
  end  
end