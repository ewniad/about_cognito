const { createServer } = require('http');
const querystring = require('querystring');

const server = createServer((req, res) => {
    if (req.url !== '/favicon.ico') {
        const params = querystring.parse(req.url.substring(2));
        const code = params.code;
        //console.log(params);
        console.log(req.url);
        console.log(code);
    }
    res.end();
});


server.listen(3000);
