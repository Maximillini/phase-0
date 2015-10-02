# I worked on this challenge [with: Jeff George & Max Iniguez ].


# Your Solution Below

def valid_triangle?(a, b, c)
   if a == 0 || b == 0 || c == 0
    puts "false"
    return false  
  end 
  if (a + b) > c && (b + c) > a && (a + c) > b
    puts "true"
    return true
  else 
    puts "false" 
    return false
  end 
end