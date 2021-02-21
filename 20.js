const { createServer } = require('http');
const querystring = require('querystring');
const fs = require('fs');
const path = require('path');

const server = createServer((req, res) => {

    let filePath = '.' + req.url;
    if (filePath == './') {
        filePath = './index.html';
    }

    const extname = String(path.extname(filePath)).toLowerCase();
    const mimeTypes = {
        '.html': 'text/html',
        '.js': 'text/javascript',
        '.css': 'text/css',
    };

    const contentType = mimeTypes[extname];

    fs.readFile(filePath, function(error, content) {
        if (error) {
            console.log(error);
        }
        else {
            res.writeHead(200, {
                'Content-Type': contentType + '; charset=UTF-8'
            });
            res.end(content, 'utf-8');
        }
    });
});


server.listen(3000, function(){
    console.log('listen');
});


