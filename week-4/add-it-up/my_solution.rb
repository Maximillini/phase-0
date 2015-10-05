# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: list of numbers
# Output: A sum of the list of numbers
# Steps to solve the problem.
# IF list of numbers is empty, output nil
# IF list of numbers contains one number, output that number
# SUM of first two numbers in the list
# Move to the next number, and add that to the SUM


# 1. total initial solution
def total(array)
  return nil if empty?(array)
  return array[0] if one_val?(array)
  else
  	sum = 0
    array.each do |x|
    	sum += x
    end
  end
end

def empty?(array)
	array.length == 0
end

def one_val?(array)
	array.length == 1
end


# 3. total refactored solution
def total(array)
	array.inject { |sum, x| sum += x }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: list of words
# Output: full sentence with capitalization and punctuation
# Steps to solve the problem.
# DEFINE a method that will take a list of words
# CREATE a container for the sentence, we will call this sentence
# ITERATE thru the list of words
# CONVERT all inputs to strings
# ADD the  words one by one to sentence
# ADD a space for between the words
# CAPITALIZE first word of sentence
# TERMINATE end of sentence
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(array)
  sentence = ""
  word = 0
  while word < array.length
    array.each do |x|
    x.to_s
    sentence += "#{x} "
      word += 1
    end
    if word == array.length
#       last = array[-1].to_s
#       sentence + "#{last}."
    end
#   for x in array[0...-1]
#       x.to_s
#       sentence += "#{x} "
#       last = array[-1].to_s
#       sentence + "#{last}."
    return sentence.capitalize.strip + "."
  end
end



# 6. sentence_maker refactored solution
def sentence_maker(array)
 sentence = array.to_s.join (" ").capitalize
 sentence.strip + "."
end