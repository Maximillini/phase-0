# I worked on this challenge [by myself].
# This challenge took me [.5] hours.


# Pseudocode
=begin
Input: a list of numbers
Output: a list of numbers with multiples of 3 replaced with the word 'Fizz'
	multiples of 5 replaced with 'Buzz', and multiples of 15 replaced with 'FizzBuzz'
Check to see if each number in the list is divisible by 3
  IF number is divisible by 3 and not 5, set number to word 'Fizz'
Check to see if each number in the list is divisible by 5
  IF number is divisible by 5 and not 3, set number to word 'Buzz'
Check to see if each number in the list is divisible by 3 AND 5
  IF number is divisible by 3 AND 5, set number to word 'FizzBuzz'

=end
# Initial Solution
=begin

def super_fizzbuzz(array)
  new_array = array.map do |x| 
    if x % 3 == 0 && x % 5 != 0
      x = "Fizz"
    elsif x % 5 == 0 && x % 3 != 0
      x = "Buzz"
    elsif x % 3 == 0 && x % 5 == 0
      x = "FizzBuzz"
    else x = x
    end
  end
  p new_array
end

=end


# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |x| 
    if x % 3 == 0 && x % 5 != 0
      x = "Fizz"
    elsif x % 5 == 0 && x % 3 != 0
      x = "Buzz"
    elsif x % 15 == 0
      x = "FizzBuzz"
    else x = x
    end
  end
end



# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [.75] hours.

=begin
# Pseudocode
Input: an integer
Output: an an integer spelled out as string in English
Create a list of english words corresponding to the digits of a number
Convert the number input into a list of individual digits
Compare the length of the list to the amount of digits a number has
  Pull english words from list depending on the digit of the input numbernd add to a complete word

=end
# Initial Solution

def num_to_eng(int)
  ones_place = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['ten', 'eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  array = int.to_s.split('').map {|x| x.to_i}

  if array.length == 1
    p ones_place[int]
  elsif array.length == 2 && array[0] == 1 && array[1] == 0
    p tens_place[1]
  elsif array.length == 2 && array[0] == 1
    p teens[array[1]]
  elsif array.length == 2 && array[0] > 1
    p tens_place[array[0]] + " " + ones_place[array[1]]
  elsif array.length == 3 && array[1] == 1
    p ones_place[array[0]] + " hundred " + teens[array[2]]
  elsif array.length == 3 && array[1] == 0
    p ones_place[array[0]] + " hundred " + ones_place[array[2]]
  elsif array.length == 3 && array[1] > 1
    p ones_place[array[0]] + " hundred " + tens_place[array[1]] + " " + ones_place[array[2]]
  end
end

num_to_eng(100)


# Refactored Solution





# Drawer Debugger

# I worked on this challenge [by myself].
# I spent [1] hour on this challenge.

# Original Code

class Drawer
  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def ope   @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents.reject! {|silverware| silverware}
    puts "Your drawer is empty." 
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end


class Silverware
  attr_reader :type
  attr_reader :clean

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end
  
  def clean_silverware
    puts "cleaning the #{@type}"
    @clean = true
  end

  def eat
    puts "eating with the #{@type}"
    @clean = false
  end
end




# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true
silverware_drawer.contents
silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents
spoon = Silverware.new("spoon") #Added Driver Code here
silverware_drawer.add_item(spoon) #And here
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false







# Reflection
=begin

***What concepts did you review or learn in this challenge?

I reviewed iteration over and accessing information from arrays. I also reviewed creating classes, and
more specifically, using attr_readers. I also reviewed deeper debugging concepts.

***What is still confusing to you about Ruby?

The thing that's still a bit confusing to me is the interaction between multiple classes. I understand
the concept, but in practice it can become confusing quickly between creating new objects that interact.

***What are you going to study to get more prepared for Phase 1?

I plan on getting more practice creating classes and methods that interact in multiple ways.

=end