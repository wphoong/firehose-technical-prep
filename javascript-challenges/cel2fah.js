var readlineSync = require('readline-sync');

var degrees = readlineSync.question('Enter degrees in Celsius: ');
var degreesNum = Number(degrees);

var degreesFahrenheit = degreesNum * 1.8 + 32;
console.log('It is ' + degreesFahrenheit + ' degrees Fahrenheit!');

var degrees1 = readlineSync.question('Enter degrees in Fahrenheit: ');
var degreesNum1 = Number(degrees1);

var degreesCelsius = (degreesNum1 - 32)/1.8;
console.log('It is ' + degreesCelsius + ' degrees Celsius!');
