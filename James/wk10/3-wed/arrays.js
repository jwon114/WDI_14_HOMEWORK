// Arrays
// Javascript provides us with a number of native methods that allow us to interact with arrays. Find methods that do each of the following and provide an example...

// Add an element to the back of an array.
// Remove an element from the back of an array.
// Add an element to the front of an array.
// Remove an element from the front of an array.
// Concatenates all the elements in an array into a string.
// Separates the characters of a string into an array. This one is a string method.
// This is a great exercise for practicing your "Google Fu"! If you need a starting point, check out MDN's documentation page on arrays.

// // Your answers go here.

array.push()
array.pop()
array.unshift()
array.shift()
array.join('')
array.split('')

// What will the contents of the below arrays be after the code samples are executed? Come up with an answer yourself before testing it out in the console.

// var numbers = [2, 4, 6, 8]
// numbers.pop()
// numbers.push(10)
// numbers.unshift(3)
// Your answer goes here.

[2, 4, 6]
[2, 4, 6, 10]
[3, 2, 4, 6, 10]

// What is the return value of the below code sample? Come up with an answer yourself before testing it out in the console.

// var morse = ["dot", "pause", "dot"]
// var moreMorse = morse.join(" dash ")
// moreMorse.split(" ")

// Your answer goes here.

moreMorse = ["dot dash pause dash dot"]
moreMorse = ['dot', 'dash', 'pause', 'dash', 'dot']


// What will the contents of the below array be after the below code sample is executed? Come up with an answer yourself before testing it out in the console.

// var bands = []
// var beatles = ["Paul", "John", "George", "Pete"]
// var stones = ["Brian", "Mick", "Keith", "Ronnie", "Charlie"]
// bands.push(beatles)
// bands.unshift(stones)
// bands[bands.length - 1].pop()
// bands[0].shift()
// bands[1][3] = "Ringo"

// Your answer goes here.

bands = [["Paul", "John", "George", "Pete"]]
bands = [["Brian", "Mick", "Keith", "Ronnie", "Charlie"], ["Paul", "John", "George", "Pete"]]
bands = [["Brian", "Mick", "Keith", "Ronnie", "Charlie"], ["Paul", "John", "George"]]
bands = [["Mick", "Keith", "Ronnie", "Charlie"], ["Paul", "John", "George"]]
bands = [["Mick", "Keith", "Ronnie", "Charlie"], ["Paul", "John", "George", "Ringo"]]


