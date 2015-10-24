// JavaScript Olympics

// I paired [with: Eunice Do] on this challenge.

// This challenge took me [#] hours.


// Bulk Up


var athletes = [
  {name: "Usain Bolt", event: "200m"},
  {name: "Michael Phelps", event: "Swimming"},
  {name: "Max Iniguez", event: "Sitting on Couch"}
];

var declareWinner = function(athletes)
{
  for (var i = 0; i < athletes.length; i++) {
      athletes.win = console.log(athletes[i].name + " has won the " + athletes[i].event + "!")
  }
}

// Driver Code
declareWinner(athletes);


// Jumble your words

var reverse = function(phrase) {
  return console.log(phrase.split("").reverse().join(""));
}

//Driver Code
reverse("What are we doing?");


// 2,4,6,8

var evensOnly = function(numbers) {
  var justEvens = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 === 0) {
      justEvens.push(numbers[i]);
    }
  }
  return console.log(justEvens);
}

// Driver Code
var numbers = [1, 2, 3, 4, 5, 6];
evensOnly(numbers);


// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name 
  this.sport = sport
  this.quote = quote
  this.age = age
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

I solidified knowledge of properties and iteration over an array in js.

What are constructor functions?

A constructor function is one that builds an object using a function, giving the object properties
one by one.

How are constructors different from Ruby classes (in your research)?

Constructors are different from Ruby classes in that they are actually simpler to access information from.
They don't require methods to pull out values, and can simply have properties assigned to them with
basically the equivalent of hash notation in Ruby. Classes also tend to contain methods that manipulate
the values it contains as instance variables, whereas constructor functions seem to mostly be for 
accessing values.


*/
