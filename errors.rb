# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
    #puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => According to the ruby interpreter, the error occurs on the last line of the entire .rb file (170),
# => but it's really occurring after line 16.
# 3. What is the type of error message?
# => It's a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us that there was an unexpected end-of-input, and that it expected the
# => 'end' keyword.
# 5. Where is the error in the code?
# => The error in the code occurs after line 15, where the interpreter is looking for an end to the
# => 'while' keyword, but the arrow is pointing to the end of the .rb file where the 
# => interpreter ended its search for the 'end' to the 'while.'
# 6. Why did the interpreter give you this error?
# => This error was given because the 'while' statement was not ended, as it should be, and it went
# => through the entire .rb file searching for the end of the 'while.'

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => line 38.
# 2. What is the type of error message?
# => <NameError>.
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that it's an undefined local variable.
# 4. Where is the error in the code?
# => The error is not pointed to with an arrow in this example, but the message tells us that
# => it occurs in '<main>.'
# 5. Why did the interpreter give you this error?
# => The error was given because the interpreter interprets 'south_park' as a variable, but one that
# => is not defined as anything.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => line 40.
# 2. What is the type of error message?
# => This is the same as above, (NameError)
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that it's an undefined local variable.
# 4. Where is the error in the code?
# => The error is not pointed to with an arrow in this example, but the message tells us that
# => it occurs in '<main>.'
# 5. Why did the interpreter give you this error?
# => The error was given because the interpreter interprets 'cartman()' as a variable, but one that
# => is not defined as anything.

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => The interpreter tells us line 74 initially, but the error really occurs in line 78.
# 2. What is the type of error message?
# => (Argument Error)
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that there's a wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => The interpreter tells us that the error is in 'cartmans_phrase.'
# 5. Why did the interpreter give you this error?
# => The interpreter was not expecting us to pass an argument to an already defined method.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => The interpreter tells us line 93 initially, but the error really occurs in line 97.
# 2. What is the type of error message?
# => (Argument Error)
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that there's a wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => The interpreter tells us that the error is in 'cartman_says.'
# 5. Why did the interpreter give you this error?
# => The method was expecting us to pass an argument to it, but there was none given.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => The interpreter tells us line 114 initially, but the error really occurs in line 118.
# 2. What is the type of error message?
# => (Argument Error)
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that there's a wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => in 'cartmens_lie'
# 5. Why did the interpreter give you this error?
# => The method we've defined expects two arguments, but in line 118 we've only given it one.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => line 133
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that a string can't be coerced into a Fixnum.
# 4. Where is the error in the code?
# => in the '*' portion of the code
# 5. Why did the interpreter give you this error?
# => The interpreter does not know how to multiply an integer by a string, even though it can
# => multiply a string by an integer.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => line 149
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us 'divided by 0'
# 4. Where is the error in the code?
# => It occurs in the '/' portion of the code.
# 5. Why did the interpreter give you this error?
# => Trying to divide by zero is a big no-no.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 165
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# => in the 'require relative' method of the code
# 5. Why did the interpreter give you this error?
# => We are trying to load a file that does not exist, period, let alone in the correct directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
# => The most difficult error to read was the Argument errors, since the error is split up over multiple lines.
#How did you figure out what the issue with the error was?
# => The additional information provided by the interpreter was a major help, as well as where in the code
# => it existed with arrows.
#Were you able to determine why each error message happened based on the code?
# => Yes, it all made sense pretty quickly and easily.
#When you encounter errors in your future code, what process will you follow to help you debug?
# => Carefully reading each part of the error message is key. It can be hard sometimes to separate each message and
# => break it down into its parts due to the limitations of the command line, but once you do, it becomes
# => so much easier to understand what it's telling you.