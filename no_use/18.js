const { createServer } = require('http');
const querystring = require('querystring');

const server = createServer((req, res) => {
    console.log(req.rawHeaders);
    console.log(req.url);
    res.end();
});


server.listen(3000);
