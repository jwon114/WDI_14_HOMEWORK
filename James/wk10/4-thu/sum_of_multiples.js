// 5. sum of multiples
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// 1, 2, [3], 4, [5], [6], 7, 8, [9], 10

// 3 + 5 + 6 + 9 = 23
// Write a program that, given a number, can find the sum of all the multiples of 3 or 5 up to and including that number.

// Write the program in javascript with nodejs.

// $ node sumOfMultiples 10
// $ 23



// I have assumed it is summing up to the input and not including
var input = process.argv[2]

var sum = 0;

for (var number = 1; number < input; number++) {
	if ((number % 3 === 0) || (number % 5 === 0)) {
		sum += number;
	}
}

console.log(sum);