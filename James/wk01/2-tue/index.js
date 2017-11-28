var name = prompt("What is your name?");
console.log(name);

var choice = prompt("On the menu tonight: Steak, fruit salad, tofurkey, pork chops. What is your menu choice?");
choice = choice.toUpperCase();

if (choice === "FRUIT SALAD" || choice === "TOFURKEY") {
	console.log("This cuisine is vegan friendly");
} else {
	console.log("Vegans beware!");
}

