var days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

// Remove Sunday from array
days_of_the_week.pop();
// Add Sunday to the front of array
days_of_the_week.unshift('Sunday');

console.log(days_of_the_week);

var days_of_the_week = [['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'], ['Saturday', 'Sunday']];

// Remove weekend array from days_of_the_week
days_of_the_week.pop();
// Assign days_of_the_week to sorted weekday array
weekdays = days_of_the_week[0].sort();

console.log(weekdays);