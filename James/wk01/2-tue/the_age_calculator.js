var date = new Date();
currentYear = date.getFullYear();

birthYear = prompt("What is your birth year?");
age1 = currentYear - birthYear;
age2 = age1 - 1;
console.log("They are either " + age1 + " or " + age2);

