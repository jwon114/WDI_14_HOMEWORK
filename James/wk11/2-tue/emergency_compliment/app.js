let express = require('express');
let app = express();
const PORT = 8080;

let randomColor = require('./functions/randomColor');
let randomCompliment = require('./functions/randomCompliment');

app.set('views', './views');
app.set('view engine', 'ejs');
app.use(express.static('public'));

app.get('/', function(req, res) {
    res.render('index', {
        color: randomColor(),
        compliment: randomCompliment()
    });
});

app.get('/:name', function(req, res) {
    res.render('index', {
        name: req.params.name,
        color: randomColor(),
        compliment: randomCompliment()
    })
});

app.listen(PORT, function() {
    console.log(`Listening on Port ${PORT}`);
});