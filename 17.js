//import http from 'http';
const { createServer } =require('http');

const server = createServer((req, res) => {
    res.write('hello');
    res.end();
});

server.listen(3000);
