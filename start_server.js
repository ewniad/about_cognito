const { createServer } = require('http');
const querystring = require('querystring');
const fs = require('fs');
const path = require('path');
const { isReturnStatement } = require('typescript');

const server = createServer((req, res) => {
    if (req.url === '/favicon.ico') {
        return;
    }

    let filePath;

    switch (req.url) {
    case '/':
        filePath = './index.html';
        break;
    case '/token':
    case '/token/':
        filePath = './token.html';
        break;
    default:
        filePath = '.' + req.url;
    }

    console.log('req.url = ' + req.url);
    console.log('filePath = ' + filePath);

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
            res.end('そんなファイルはない。');
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


