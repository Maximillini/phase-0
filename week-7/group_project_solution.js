//Refactor

function sum(integer_array) {
  var total = 0;
  for (var i = 0; i < integer_array.length; total += integer_array[i++]);
  console.log(total);
}

var array = [4,5,6,7,8,9];
console.log(sum(array));

/*
SUM

As a user, I want to input a list of numbers and have the program output their sum by
printing the result to the console.

*/


//Refactor
function mean(integer_array) {
  var length = integer_array.length
  var total = sum(integer_array);
  return total/length;
 }

var array = [4,5,6,7,8,9];
console.log(mean(array));

/*
MEAN

As a user, I want to input a list of numbers, and have them added together and divided
by the number of items in the list, giving me the average, and printing the result to the console.

*/


function median(integer_array) {
  var arr_length = integer_array.length
  if (integer_array % 2 === 0){
    var middle_two = [];
    middle_two.push(arr_length / 2 - 1);
    return mean(middle_two);
    }
 else {
  var middle_index = (arr_length - 1) / 2;
    return integer_array[middle_index];
  }
}

var array = [4,5,6,7,8];
console.log(median(array));

//Refactor

/*
MEDIAN

As a user, I want to input a list of numbers. If that list of numbers contains an odd amount of numbers,
I want the program to output the number in the middle of the list. If the list contains an even
amount of numbers, I want the program to output the sum of the two numbers in the middle of the list,
divided by two.

*/