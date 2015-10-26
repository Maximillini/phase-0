// Eloquent JavaScript
/*
INTRODUCTION:

**Did you learn anything new about JavaScript or programming in general?

I learned that JavaScript has nothing to do with Java, and that it was built specifically for use in
Netscape. I also learned to think about programming as essentially shorthand for more mundane and 
uninteresting details that can thankfully be skipped over.

**Are there any concepts you feel uncomfortable with?

I feel comfortable with everything I've read so far.

CHAPTER ONE:

**Identify two similarities and two differences between JavaScript 
and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

Similarities:
1. Strings operate the same way in both Ruby and JS, in that they are objects that act like psuedo-arrays
with a length property, and indexes.
2. Operators work the same way in both Ruby and JS, in that most operators (+, -, *, /, %, <=, <, >=)
have the exact same functions and syntax in both languages.

Differences:
1. The biggest difference in operators comes from the equality operator. While in Ruby, equality is
checked with ==, JS uses ===. JS also has an == operator, but it does not work in the same way that 
Ruby's == works.
2. The sytax of strings and numbers is different in JS from Ruby because they can be coerced into 
other data types, as opposed to in Ruby, where they are static until acted on by a method, which can be
considered a positive and negative feature.

CHAPTER TWO:

**What is an expression?

An expression is a chunk of code that produces a value, such as a number or a string. 
It can be combined in order to create full statements.

**What is the purpose of semicolons in JavaScript? Are they always required?

A semicolon denotes the end of a statement. They are not always required, but the rules and 
exceptions are numerous, so they should be used in most cases.

**What causes a variable to return undefined?

If it is called when it is empty.

**Write your own variable and do something to it in the eloquent.js file.

See below.

**What does console.log do and when would you use it? What Ruby method(s) is this similar to?

Console.log will print the statement/expression inside the parentheses to the console.
This is similar to p, puts, and print in Ruby.

**Write a short program that asks for a user to input their favorite food. 
After they hit return, have the program respond with 
"Hey! That's my favorite too!" (You will probably need to run this in the Chrome console 
(Links to an external site.) rather than node since node does not support prompt or alert). 
Paste your program into the eloquent.js file.
*/

// prompt("What is your favorite food?")
// alert("Hey! That's my favorite too!")

/*

**Describe while and for loops

A while loop checks for a condition, and performs a block of code until that condition no longer applies.
A for loop does something similar, but just condensed, creating the condition to check for, and block
of code to execute all on one line.

**What other similarities or differences between Ruby and JavaScript did you notice in this section?

One other similarity I noticed was the way that if/else statements work. They control the flow of logic
in nearly the same way as in Ruby (albeit using else if instead of the neater 'elsif').

**Complete at least one of the exercises 
(Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

See below.


CHAPTER THREE:

**What are the differences between local and global variables in JavaScript?

Local variables are limited in scope to a function, meaning that they are only defined
inside a function block. Global variables are defined throughout an entire program.

**When should you use functions?

When you need to produce a value or a side effect of some process.

**What is a function declaration?

A function declaration is a type of variable notation that declares the variable after the word 
function, as opposed to declaring a var x = function. The main difference between a declaration and
normal variable notation is that a function declaration will make the function occur first, as opposed
to the normal top to bottom flow for programs.

CHAPTER FOUR:

**What is the difference between using a dot and a bracket to look up a property? 
Ex. array.max vs array["max"]

When using dot notation, what follows the dot must be a valid variable name, whereas a bracket will
evaluate an expression to access the property, meaning that you can use numbers and strings instead
of valid variable names.

**Create an object called me that stores your name, age, three favorite foods, 
and a quirk in your eloquent.js file.

See below.

**What is a JavaScript object with a name and value property similar to in Ruby?

It is similar to a hash, with its key/value pairs.

*/




// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number = 0;
console.log(number += 5)


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var pound = "#"; pound.length < 8; pound += "#")
  console.log(pound);

// Functions

// Complete the `minimum` exercise.

function min(first_num, second_num) {
  if (first_num > second_num) {
      return second_num;
  }
    else {
      return first_num
    }
}

console.log(min(0, 10))
console.log(min(0, -10))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Max Iniguez",
  age: 29,
  favorite_food: ("Tacos", "Spaghetti", "Sushi"),
  quirk: "Plays sousaphone"
}

//Reflection
/*

**What are the biggest similarities and differences between JavaScript and Ruby?

The biggest similarities are in the way that data structures work. Arrays and hashes in Ruby operate
almost identically in JavaScript as arrays and objects with properties. The way that numbers,
strings, booleans, and operators are used is also nearly identical. The biggest differences seem to
be simply in the more rigid syntax of JS. You need to know when to use curly braces, include semi-colons
to denote the end of a statement as opposed to just a line break, and there don't seem to be nearly as
many neat and clean built-in functions/methods as in Ruby, which makes performing certain processes
a bit more of a chore.

**Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?

I think the biggest thing that was solidified by learning JS was the concept of hashes, which seemed
foreign and a bit confusing to me in Ruby as compared to the straightforward array notation. But 
when I see how objects and properties work in JS, and that they are essentially the same as hashes,
it becomes clearer in my mind what is happening with hashes. I think objects and properties carries
more significance to me than key and value.

**How do you feel about diving into JavaScript after reading these chapters?

I feel as though the syntax is going to majorly take some getting used to because of the relative
rigidity compared to Ruby, but the concepts are generally similar, which makes the logic easy to follow.

*/