var connect = require('connect');
var http = require('http');
var app;

app = connect()
    .use(connect['static']('src/'))
    .use('/js', connect['static']('/src/js/'))
    .use('/lib', connect['static']('lib/'))
    .use('/test', connect['static']('test/'));

http.createServer(app).listen(4000, function() {
    console.log("Running on http://localhost:4000");
});

