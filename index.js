const express = require('express');
const version = require('./package.json').version;
const logger  = require('morgan');
const port    = 3000;

var app = express();

app.use(logger('dev'));

app.get('/version', (req, res) => {
	res.send(version);
});

app.get('/hello', (req, res) => {
	res.send({message : 'hello world'});
});

app.listen(port, () => {
	console.log(`App started as well at port ${port}`);
});