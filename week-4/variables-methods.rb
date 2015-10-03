puts "What is your first name?"
first_name = gets.chomp
puts "Ok, what is your middle name?"
mid_name = gets.chomp
puts "Thank you! Now what is your last name?"
last_name = gets.chomp

puts "Wow, " + first_name + " " + mid_name + " " + last_name + "! That's a dumb name!"
puts
puts "What is your favorite number?"
fav_num = gets.chomp
better_num = (fav_num.to_i + 1)
puts "Yeah, that one's ok... if you've never heard of " + better_num.to_s

#How do you define a local variable?
# => A local variable can be defined by typing the variable name, followed by '=' then
# => the variable definition. The variable name must be to the left of the =.
#How do you define a method?
# => A method can be defined by typing:
# => def method_name
# => 	method defining code here
# => end
#What is the difference between a local variable and a method?
# => A local variable is a variable that exists temporarily to store an object for use
# => again later. A method is 
#How do you run a ruby program from the command line?
# => You can run a ruby program from the command line by typing ruby <your-file>.rb
#How do you run an RSpec file from the command line?
# => Type rpsec <your-rspec-file>.rb
#What was confusing about this material? What made sense?
# => I had a little trouble getting the rspec file to work because of the difference between
# => puts, print, and p, which took me a long time to figure out what the problem was. Aside
# => from that, I thought most everything was straight-forward.

#Links to programs:
#https://github.com/Maximillini/phase-0/blob/master/week-4/address/my_solution.rb
#https://github.com/Maximillini/phase-0/blob/master/week-4/math/my_solution.rb
