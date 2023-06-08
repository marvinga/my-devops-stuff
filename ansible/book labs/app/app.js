// Load the express module
var express = require('express');
var app = express();

// Respond to request for  / with 'Hellow World'.
app.get('/', function(req,res){
	res.send('Hello World!');
});

// Listen on port 80 (like a true web server)
app.listen(80, () => console.log('Express Server started successfully.'));


