// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Take all the territory!
// Goals: Win individual "Battles" using cards to advance your troops
// Characters: Player, Opponent - Napoleon
// Objects: Player, Opponent, Deck
// Functions: Look at hand, Exchange cards, Play card, Deal cards

// Pseudocode
// 1. Initialize player and opponent with no cards in hand, 50% territory
// 2. Create deck
// 3. Give starting hand to each player
// 4. Allow player to look at their hand
// 5. Create ability to play card (card will leave player's hand)
// 6. Compare player and opponent's played card, with the higher being the winner
// 7. Higher card advances territory
// 8. When player or opponent reaches 100% territory, that player wins

// Initial Code

// var player = {
//   name: "Player",
//   hand: [],
//   territory: 50
// }

// var opponent = {
//   name: "Napoleon",
//   hand: [],
//   territory: 50
// }

// var deck = [
//   1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5
// ];

// function look() {
//   console.log("Your cards: " + String(player.hand));
//   console.log("You control " + String(player.territory) + "% of Napoleon's territory.");
// }


// function deal(array) {
// //   var rand = Math.floor((Math.random() * 14));
// //   for (var i = 0; i < 3; i++) {
//   (player.hand).push(array[Math.floor((Math.random() * 14))]);
//   (player.hand).push(array[Math.floor((Math.random() * 14))]);
//   (player.hand).push(array[Math.floor((Math.random() * 14))]);
//   (opponent.hand).push(array[Math.floor((Math.random() * 14))]);
//   (opponent.hand).push(array[Math.floor((Math.random() * 14))]);
//   (opponent.hand).push(array[Math.floor((Math.random() * 14))]);
// }

// function play(card) {
//   console.log(player.name + " plays " + String(player.hand[card]));
//   console.log(opponent.name + " plays " + String(opponent.hand[card]));
//     if (player.hand[card] > opponent.hand[card]) {
//       console.log("Napoleon pulls his troops back, your troops advance!");
//       player.territory += 25;
//       opponent.territory -= 25;
//       console.log()
//     }
//     else if (player.hand[card] < opponent.hand[card]) {
//       console.log("Napolean advances on your territory!");
//       player.territory -= 25;
//       opponent.territory += 25;
//     }
//     else if (player.hand[card] === opponent.hand[card]) {
//       console.log("Both armies' troops fight to a stalemate!")
//     }
//   if (player.territory === 100) {
//   console.log("YOU'VE CONQUERED NAPOLEON!");
//   }
//   else if (opponent.territory === 100) {
//   console.log("YOU HAVE BEEN CONQUERED!");
//   }
// }


// look()
// deal(deck)
// look()
// play(1)
// look()
// play(2)
// look()
// play(0)


// Refactored Code

var player = {
  name: "Player",
  hand: [],
  territory: 50
}

var opponent = {
  name: "Napoleon",
  hand: [],
  territory: 50
}

var deck = [
  1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5
];

function look() {
  console.log("Your cards: " + String(player.hand));
  console.log("You control " + String(player.territory) + "% of Napoleon's territory.");
}


function deal(array) {
//   var rand = Math.floor((Math.random() * 14));
  for (var i = 0; i < 3; i++) {
  (player.hand).push(array[Math.floor((Math.random() * 14))]);
  (opponent.hand).push(array[Math.floor((Math.random() * 14))]);
  }
}

function play(card) {
  console.log(player.name + " plays " + String(player.hand[card]));
  console.log(opponent.name + " plays " + String(opponent.hand[card]));
    if (player.hand[card] > opponent.hand[card]) {
      console.log("Napoleon pulls his troops back, your troops advance!");
      player.territory += 25;
      opponent.territory -= 25;
      console.log();
    }
    else if (player.hand[card] < opponent.hand[card]) {
      console.log("Napolean advances on your territory!");
      player.territory -= 25;
      opponent.territory += 25;
    }
    else if (player.hand[card] === opponent.hand[card]) {
      console.log("Both armies' troops fight to a stalemate!")
    }
  if (player.territory === 100) {
  console.log("YOU'VE CONQUERED NAPOLEON!");
    player.territory = 50;
    opponent.territory = 50;
  }
  else if (opponent.territory === 100) {
  console.log("YOU HAVE BEEN CONQUERED!");
    player.territory = 50;
    opponent.territory = 50;
  
  }
}





// Reflection
//
/*

**What was the most difficult part of this challenge?

The hardest part of this challenge, after trying to think of a game I could make within the scope of my
abilities, was trying to get a deck of cards to be initialized. I ultimately had to give up that idea
(it was MUCH harder than I imagined at first!) and go with generic cards numbered 1-5, which got the job done in a similar fashion. I plan on redoing
this though and trying to get a full standard deck of cards to operate properly.

**What did you learn about creating objects and functions that interact with one another?

It's actually fairly intuitive and easy to follow. I didn't have too much trouble getting the objects
to interact, aside from the deck of cards.

**Did you learn about any new built-in methods you could use in your refactored solution? 
If so, what were they and how do they work?

I did learn about slice and splice to get the cards to (figuratively) move from the deck to the player's
hand, but I ran out of time to implement the method, unfortunately. 

**How can you access and manipulate properties of objects?

The properties of objects can be accessed with dot or bracket notation, and can be manipulated with loops
or simply by assigning a new value to it.
*/
//
//
//
//
//
//