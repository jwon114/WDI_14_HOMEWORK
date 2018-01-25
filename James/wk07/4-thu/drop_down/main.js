// DOM Drop-Down
// Your must complete two tasks using JavaScript ONLY. Do NOT change the HTML file. Make the following changes in JavaScript:

// Update the drop down box to show the five cities NYC, SF, LA, SYD, ATX. Note: You will need to research how to add DOM objects to a web page to be able to add option tags to the select tag.
// When you select a city in the drop-down box, the background image should change to show that city. 
// The images for the five cities are in the images folder. We have already provided the css code for changing the background image in the style.css file (at the bottom). 
// Use those classes.

var cities = ['NYC', 'SF', 'LA', 'SYD', 'ATX'];
var dropDown = document.querySelector('#city-type');

cities.forEach(city => {
	var newOption = document.createElement("OPTION");
	newOption.text = city;
	dropDown.add(newOption);
});

dropDown.addEventListener('change', function() {
	var selectedCity = dropDown.options[dropDown.selectedIndex].text;
	var bodyElement = document.body;
	bodyElement.className = "";
	switch(selectedCity) {
		case 'NYC':
			bodyElement.classList.add('nyc'); 
			break;
		case 'SF':
			bodyElement.classList.add('sf');
			break;
		case 'LA':
			bodyElement.classList.add('la');
			break;
		case 'SYD':
			bodyElement.classList.add('sydney');
			break;
		case 'ATX':
			bodyElement.classList.add('austin');
			break;
		default:
			break;
	}
})








