let _ = require('lodash');

function randomCompliment() {
  let compliments = [
      "Your instructors love you",
      "High five = ^5",
      "Shut up and take my money",
      "It's almost beer o'clock",
      "The Force is strong with you",
      "King Pong time"
  ]
  return _.sample(compliments);
}

module.exports = randomCompliment;