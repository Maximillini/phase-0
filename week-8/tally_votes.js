// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Michael Jasinski
// This challenge took me [8] hours.

These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
Input: A list of voters and their votes
Output: A list of tallied votes, and a winner for each office

Steps:

Loop through the voters to get their choices
  Loop through each office to get the voter's vote
    IF a candidate received a vote for a particular office, put that name in the appropriate office
  IF a candidate received a vote, tick up the value associated with the candidate in voteCount

Loop through candidates in voteCount
  Initialize the first candidate in officers
  IF the first candidate received fewer votes than the next, change the first to the next



// __________________________________________
// Initial Solution

/*
for (var voter in votes) {
    var choices = votes[voter];
    for(var office in choices) {
      var person = choices[office]
        if(voteCount[office][person] === undefined) {
          voteCount[office][person] = 0;
        }
    voteCount[office][person]++;
    }
}
for (var office in voteCount) {
  for (var candidate in voteCount[office]) {
    var official = officers[office]
    if (official === undefined) {
      officers[office] = candidate;
    }
    if (voteCount[office][officers[office]] < voteCount[office][candidate]) {
      officers[office] = candidate;
    }
  }
}
*/

// __________________________________________
// Refactored Solution

for (var voter in votes) {
    for(var office in votes[voter]) {
      var person = votes[voter][office]
        if(voteCount[office][person] === undefined) {
          voteCount[office][person] = 0;
        }
    voteCount[office][person]++;
    }
}
for (var office in voteCount) {
  for (var candidate in voteCount[office]) {
    var official = officers[office]
    if (official === undefined) {
      officers[office] = candidate;
    }
    if (voteCount[office][officers[office]] < voteCount[office][candidate]) {
      officers[office] = candidate;
    }
  }
}


// __________________________________________
// Reflection
/*
***What did you learn about iterating over nested objects in JavaScript?

I learned how to use the for..in loop effectively to dive through multiple layers of nested data.
This process can become quickly overwhelming however, depending on the complexity of the data structures
you're iterating over. The for..in loop is very powerful though, and is necessary in order to pull
information from objects without resorting to lengthy hardcoding.

***Were you able to find useful methods to help you with this?

I wasn't able to find any built-in methods for objects in JS to help with this, but I found that
variable names were incredibly important in this challenge, because without clearly named variables
it's extremely easy to lose track of what you're doing 

***What concepts were solidified in the process of working through this challenge?

Basic JS syntax was solidified for me personally. In this challenge, missing a semi-colon or putting a
curly brace in the wrong place can be the difference between success and broken code. The concepts of
property value pairs and the notation used to access them were also solidified.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "