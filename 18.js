const { createServer } = require('http');
const querystring = require('querystring');

const server = createServer((req, res) => {
    /*
    req.setEncoding('utf8');
    let str = '';
    req.on('data', (chunk) => {
        str += chunk;
    });
    req.on('end', () => {
        console.log(str);
    });
    */
    //if (req.url !== '/favicon.ico') {
        //const params = querystring.parse(req.url.substring(2));
        //const code = params.code;
        console.log(req.rawHeaders);
        //console.log(req.headers);
        //console.log(params);
        //console.log(req);
        console.log(req.url);
        //console.log(code);
    //}
    res.end();
});


server.listen(3000);
