######What does puts do?

puts will return whatever you put after it.

######What is an integer? What is a float?

An integer is a whole number, positive or negative, whereas a float is expressed as decimals.

######What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference between float and integer division is that integer division drops the fraction remainder to give an answer that is also an integer. The easiest way to explain this is that there are situations where you may want to know how many times a number can go into another one without a decimal, for instance how many $1.50 candy bars you can buy with $5 from a vending machine. Obviously you can't buy a fraction of a candy bar from a vending machine, so you'd want to know the largest whole number of candy bars you can get.

######Mini-Challenges:

```ruby
# Hours in a year
puts 365*24

# Minutes in a decade
puts (((10*365)*24)*60)

# Age in seconds
puts ((((29*365)*24)*60)*60)
```

##Reflection

###How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles these basic math operations in the same way that a normal calculator does, with the exception that quotients will only output as whole numbers unless decimals are used in the original equation.

###What is the difference between integers and floats?

Integers are whole numbers (positive or negative), and floats are fractions expressed with decimals.

###What is the difference between integer and float division?

As stated above, the difference between float and integer division is that integer division drops the fraction remainder to give an answer that is also an integer.

###What are strings? Why and when would you use them?

Strings are groups of letters, words, or other characters. Strings can be used to communicate or give messages to the user.

###What are local variables? Why and when would you use them?

Local variables are a way to reuse strings, numbers, or equations over multiple lines of code, as opposed to having to re-enter for each use. I believe they are mostly used to increase efficiency through saving the programmer from having to reference the same values over and over again.

###How was this challenge? Did you get a good review of some of the basics?

I enjoyed this challenge in that it uses a combination of the more basic explanations of Chris Pine's book, and more advanced techniques. It did a good job of going through the most basic ruby functions.