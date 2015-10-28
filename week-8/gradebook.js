/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with: Jay Yee]
This challenge took us [1] hour.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/
var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]





// __________________________________________
// Write your code below.

var gradebook = {};

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores: scores[i]};
}

gradebook.addScore = function(name, score) {
  return gradebook[name].testScores.push(score); 
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};

var average = function (array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++){
    sum += array[i];
  }
    return sum / array.length;
}



// __________________________________________
// Refactored Solution

var gradebook = {};

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores: scores[i]};
}

gradebook.addScore = function(name, score) {
  return gradebook[name].testScores.push(score); 
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};

var average = function (array) {
  var sum = array.reduce(function(first, second) { return first + second; }, 0);
    return sum / array.length;
}


// __________________________________________
// Reflect
/*

**What did you learn about adding functions to objects?

I learned that you have to specifically use bracket notation to assign arguments as properties to
objects.

**How did you iterate over nested arrays in JavaScript?

We iterated over the nested arrays the same way we would iterate over a normal array. We wanted
all of the scores in one row of the array matrix per student, so we simply used a for loop to set
the student name property to equal one element of the bigger array.

**Were there any new methods you were able to incorporate? If so, what were they and how did they work?

We were able to use the reduce method which I had never used before, and it worked very nicely to
replace the for loop we'd used originally to get the average. It worked by basically running a one line
function to reduce an array to a single number; just what we needed to get the average.
*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)