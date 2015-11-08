/*
USER STORIES:

As user, I want to be able to create a new list from scratch.

I want to be able to add an item with a quantity to the list by typing the
item and quantity, then clicking a button.

I want to be able to remove a specific item from the list by typing its name
and clicking a button.

I want to be able to update an item's quantity by typing the item and the new
quantity, then clicking a button.

I want to be able to display the list at the click of a button.


PSUEDOCODE:
Input: A blank list
Output: a grocery list updated with new items, specified items deleted, or updated item quantities




*/
function new_item(list, food, quantity) {
  list[food] = quantity;
  console.log("adding " + quantity + " " + food + " to list.");
}

function delete_item(list, food) {
  delete list[food];
  console.log("removing " + food + " from list.")
}

function update_total(list, food, quantity) {
  list[food] = quantity;
  console.log("updating " + food + " to " + quantity + ".");
}

function print_list(list) {
  for (var food in list) {
    console.log(food + ": " + list[food]);
  }
}

var list = {};
new_item(list, "steaks", 2);
new_item(list, "oranges", 5);
new_item(list, "apples", 3);
new_item(list, "bread", 1);
delete_item(list, "apples");
update_total(list, "oranges", 10);
print_list(list);

/*
Reflection:

***What concepts did you solidify in working on this challenge? (reviewing the passing of information, 
objects, constructors, etc.)

The concepts that I solidified in this challenge were passing information between functions in JS.

***What was the most difficult part of this challenge?

I actually didn't really find this one challenging. I used the same sort of process as I would with Ruby.

***Did an array or object make more sense to use and why?

An object made far more sense for this challenge, because with it, you can store an item AND its quantity
in one collection, as opposed to multiple arrays.

*/


// function super_fizzbuzz(array) {
//   for (var i = 0; i < array.length; i++) {
//     if (array[i] % 15 === 0) {
//       array[i] = "FizzBuzz";
//     }
//     else if (array[i] % 5 === 0) {
//       array[i] = "Buzz";
//     }
//     else if (array[i] % 3 === 0) {
//       array[i] = "Fizz";
//     }
//     else {
//       array[i]
//     }
//   }
//   console.log(array);
// }


// super_fizzbuzz([1, 5, 6, 9, 10, 12, 13, 14, 15])