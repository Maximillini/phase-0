#Attr Methods

# I worked on this challenge [with: Josh Abrams]

# I spent [1] hour on this challenge.

class NameData

  attr_accessor  :name

  def initialize
    @name = name
  end
end


class Greetings

  def initialize
    @me = NameData.new
    @me.name = "Josh"
  end


    def hello
      puts "Hello #{@me.name}. Fancy seeing you here."
    end
    
    def goodbye
      puts "See you later, #{@me.name}."
    end
    
    def curse
      puts "Curse you to the slippery caves of Whaf, #{@me.name}!!"
    end
end



# Reflection

=begin
# RELEASE 1:	
# What are these methods doing?

# => All of the methods in this class are either returning the initialized Profile information, or 
# => allowing them to be overwritten. For example, initialize automatically runs and sets the default information. 
# => print_info simply returns that information in a stylized way, while the 'what_is' methods 
# => will simply return whatever they're asking for (what_is_name => name, etc.). The 'change' methods, in a similar
# => fashion, will change whatever the method asks for.

# How are they modifying or returning the value of instance variables?

# => Each method that modifies the value of an instance variable is simply reassigning the instance variable to a
# => new value. The methods which return the value of an instance variable are literally just returning the instance
# => variable.
=end

=begin
# RELEASE 2:
# What changed between the last release and this release?

# => The method what_is_name was replaced with an attr_reader method which does the same thing, but cleaner and
with fewer lines of code.

# What was replaced?

# => The entire what_is_name method definition.

# Is this code simpler than the last?

# => It's slightly simpler, replacing three lines of clumsy code with one clean and clear method.	
=end

=begin
#RELEASE 3:
# What changed between the last release and this release?

# => The method used to change the age on the Profile info was changed to just .age. 

# What was replaced?

# => The method change_age was replaced with an attr_writer method for age.

# Is this code simpler than the last?	

# => It's much simpler. Not only are unnecessary lines of code removed, but it allows the age to be both retrieved
# => # => AND overwritten using the same method call: '.age'.
=end

=begin
#RELEASE 6:
# What is a reader method?

# => A reader method is one that simply returns a value given to an instance variable.

# What is a writer method?

# => A writer method is one which overwrites a value assigned to an instance variable with a new one.

# What do the attr methods do for you?

# => Attr methods replace a define method code block with a cleaner and simpler method that substitutes
# => a symbol for the method name, code block, and argument

a symbol for the instance variable, method call, and arguments.

# Should you always use an accessor to cover your bases? Why or Why not?

# => No, you shouldn't always use an accessor, because there are some values that you don't want the end user
# => to be able to change. 

# What is confusing to you about these methods?

# => These methods are actually fairly straight-forward to me. They replace simple return and modify methods
# => (getter and setters) with even simpler methods using symbols. I struggled at first to understand that they can
# => ONLY replace getter and setters, and they can't be built off of in any way, but it all makes sense to me now.

=end