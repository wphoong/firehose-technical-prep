var readlineSync = require('readline-sync');

var ordinal = function(digit) {
  var number = Number(digit);
  var lastDigit = number % 10;
  var lastTwoDigits = number % 100;

   if (lastTwoDigits > 10 && lastTwoDigits < 20) {
    return digit + 'th';
  } else if (lastDigit == 1) {
    return digit + 'st';
  } else if (lastDigit == 2) {
    return digit + 'nd';
  } else if (lastDigit == 3) {
    return digit + 'rd';
  } else {
    return digit + 'th';
  }
}


var input = readlineSync.question("Enter a digit: ");

var value = ordinal(input);
console.log(value);