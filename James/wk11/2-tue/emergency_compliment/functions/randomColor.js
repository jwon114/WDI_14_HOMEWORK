let _ = require('lodash');

function randomColor() {
    let colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080", 'mistyrose']
    return _.sample(colors);
}

module.exports = randomColor;