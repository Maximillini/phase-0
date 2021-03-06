// Separate Numbers with Commas in JavaScript


// I worked on this challenge with: Nicole Yee.

// Pseudocode

//Input:  integer
//Output: integer - with commas - as a string
//Steps:
/*
1. Make integer into String with each digit as it's own element
2. Reverse the number
3. Every 3 digits, add a comma
4. Reverse the number
5. RETURN a string
*/

// Initial Solution
/*
function separateComma(integer) {
  var string = integer.toString();
  //return string.split('').reverse().join('');
  var string_comma = "";
  for (var counter = string.length; counter > 0; counter -= 3) {
    var sub = string.substring(counter, (counter -3))
    string_comma = sub + "," + string_comma;
    
  }
  return(string_comma.substring(0, string_comma.length-1));
};
*/
//console.log(separateComma(100000));

// Refactored Solution

function separateComma(integer) {
  var string = integer.toString();
  var string_comma = "";
  for (var counter = string.length; counter > 0; counter -= 3) {
    var sub = string.substring(counter, (counter -3));
    if (counter === string.length) {
      string_comma = sub.concat(string_comma);
      continue;
    }
    string_comma = sub.concat(",", string_comma);
    
  }
  return string_comma;
};

console.log(separateComma(100));


// Your Own Tests (OPTIONAL)
function assert(test, message) {
  if (!test) {
    throw "Error: " + message;
  }
  return true;
}

assert(
  (typeof separateComma(10000) === 'string'),
  "It should output a String."
)
assert(
  (separateComma(100) === "100"),
  "There should be no commas."
)
assert(
  (separateComma(1000) === "1,000"),
  "There should be one comma between the thousands and hundreds place."
)
assert(
  (separateComma(10000) == "10,000"),
  "There should be one comma between the thousands and hundreds place."
)
assert(
  (separateComma(100000) === "100,000"),
  "There should be one comma between the thousands and hundreds place."
)
assert(
  (separateComma(1000000) === "1,000,000"),
  "There should be two commas. One between the thousands and hundreds place. The other between the millions and hundred thousands place."
)



// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? 
Did you approach the problem differently?

Javascript was definitely different than the approach from Ruby. Since JavaScript has no built-in method
for reversing strings, we had to complete the function in a slightly less elegant way using a negative
counter.

What did you learn about iterating over arrays in JavaScript?

We actually kept the function as a string, so we didn't actually iterate over an array.

What was different about solving this problem in JavaScript?

Mostly the syntax, and the necessity of using multiple variables.

What built-in methods did you find to incorporate in your refactored solution?

We used the concat method in order to print the output as a complete string.
*/