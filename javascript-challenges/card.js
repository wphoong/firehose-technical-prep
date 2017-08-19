"use strict";

var readlineSync = require("readline-sync");
var rank = readlineSync.question('Name a rank: ');
var suit = readlineSync.question('Name a suit: ');

class Card {
  constructor(rank, suit) {
    this.rank = rank;
    this.suit = suit;
  }

  outputCard() {
    console.log(this.rank + " of " + this.suit);
  }
}

const c = new Card(rank, suit);
c.outputCard();