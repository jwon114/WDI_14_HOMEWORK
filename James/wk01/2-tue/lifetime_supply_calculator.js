var age = prompt("What is your age?");
var max_age = 100;
var estimated_amount = 5;

var total = (max_age - age) * estimated_amount * 365;

console.log("You will need " + total + " to last you until the ripe old age of " + max_age);