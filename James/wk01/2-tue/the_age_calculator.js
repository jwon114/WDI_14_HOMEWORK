var date = new Date();
var currentYear = date.getFullYear();

var birthYear = prompt("What is your birth year?");
var age1 = currentYear - birthYear;
var age2 = age1 - 1;
console.log("They are either " + age1 + " or " + age2);

