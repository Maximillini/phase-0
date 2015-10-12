# Pseudocode
# Input: List of names
# Output: List of names grouped into 4 or 5 names
#
# Steps:
# 1. Break list into smaller groups
# 2. Return groups to main list



copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", 
"Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", 
"Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", 
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", 
"John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", 
"Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", 
"Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", 
"Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", 
"Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", 
"John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", 
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", 
"Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", 
"Nicole Yee", "Bruno Zatta"]


def make_groups(input)
  input.shuffle.each_slice(5) {|i| p i}
end

p make_groups(copperheads)

#Reflection:
# What was the most interesting and most difficult part of this challenge?
# => The most interesting AND the most difficult thing about this challenge was the lack of constraints. We were
# given a broad end goal, but no real limitations on how to get there.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => I still tend to not break problems down small enough, and then I usually completely abandon the initial
# pseudocode that I wrote and just tinker with the actual code. It's a habit that I can break in time, and especially
# with more difficult problems.

# Was your approach for automating this task a good solution? What could have made it even better?
# => I think the approach for automating this was very clean and simple. The output is fairly readable, but
# I think I could have played around with exactly how the output information is presented to the user.

# What data structure did you decide to store the accountability groups in and why?
# => I decided to work with an array. I didn't feel it was necessary to name the groups or give them any sort of
# association, and arrays of 5 names each seemed to do the job just fine.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => I learned both the shuffle and each_slice methods. These were key to making my code simple and effective.
# Shuffle does what it sounds like, and randomizes the elements of an array, which I called as the first method,
# then I used each_slice to divy up the names into arrays of 5 after that shuffling, to give a random assignment.