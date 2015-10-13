# Your Names
# 1)Marie-France Han
# 2)Max Iniguez

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  unless menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = menu[item_to_make]
  serving_size_mod = order_quantity % serving_size

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}"

  elsif serving_size_mod == 1
      return "Calculations complete: Make #{order_quantity/serving_size}     #{item_to_make}, you have #{serving_size_mod} leftover ingredients. why don't we bake: a     cookie?"
  else

    return "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}, you have #{serving_size_mod} leftover ingredients. why don't we bake: #{serving_size_mod} cookies?"
  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
#
# => I learned that variable names are important, as well as intent with your code. When I first
# read the code for this challenge, it was amazing how unclear what the code was actually meant to do.
# Writing readable code isn't just about making it aesthetically pleasing or elegant, it's also about
# making the end goal as clear as possible.
#
# Did you learn any new methods? What did you learn about them?
#
# => We learned the .has_key? method, which is great for comparing two hashes. We also learned the
# values_at method, which returns an array of the values in a hash.
#
# What did you learn about accessing data in hashes? 
#
# => I didn't learn much new about accessing data in a hash, aside from the method for .has_key?
#
# What concepts were solidified when working through this challenge?
#
# => Just hash manipulation in general.