# Good Guess

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def good_guess?(num)
	if num == 42
		puts "Damn it!"
		return true
	else
		puts "Ha!! Guess again!"
		return false
	end
end