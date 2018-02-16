// Node Weather CLI
// request is a nodejs library for making http requests. Read the documentation to learn how it works.

// In the app.js file write a command line application that fetches the temperature for Melbourne Australia using the open weather map API and the request library.

// example usage
// $ node weather.js
// $ 15
// bonus
// allow user to pass in an Australian city through the command line

// $ node weather.js sydney
// $ 19

var request = require('request');
var city = process.argv[2];

city ? url = `http://api.openweathermap.org/data/2.5/weather?id=524901&APPID=${process.env.OWM_API_KEY}&q=${city}&units=metric` : url = `http://api.openweathermap.org/data/2.5/weather?id=524901&APPID=${process.env.OWM_API_KEY}&q=Melbourne&units=metric`

request(url, function(error, response, body) {
	if (error === null) {
		data = JSON.parse(body)
		var temp = data.main.temp
		console.log(temp);
	} else {
		console.log(error);
	}
})