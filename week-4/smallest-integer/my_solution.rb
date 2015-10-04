# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  if no_values?(list_of_nums)
  	return nil
  elsif one_value?(list_of_nums)
    return list_of_nums[0]
  else
  	first_num = list_of_nums[0]
    x = 1
  	while  x < list_of_nums.length
  		if first_num > list_of_nums[x]
  			first_num = list_of_nums[x]
      end
      x += 1
    end
    return first_num
  end
end
  	
def no_values?(list_of_nums)
	list_of_nums.length == 0
end

def one_value?(list_of_nums)
  list_of_nums.length == 1
end
