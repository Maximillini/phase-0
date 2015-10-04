# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  return nil if no_string?(list_of_words)
  return list_of_words[0] if one_string?(list_of_words)
  	else
  		first_word = list_of_words[0]
  		x = 1
  		while x < list_of_words.length
  			if first_word.length > list_of_words[x].length
  				first_word = list_of_words[x]
  			end
  			x += 1
  		end
  		return first_word
end

def no_string?(list_of_words)
	list_of_words.length == 0
end

def one_string?(list_of_words)
	list_of_words.length == 1
end
