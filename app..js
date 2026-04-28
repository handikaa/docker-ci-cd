const http = required('http');

const POST = 3000;
const HOST = '0.0.0.0';

const server = http.createServer((req, res)=>{
    console.log(`Request Masuk ${req.method} ${req.url}`);

    res.writeHead(200, {'Content-Type': 'text/plain'})

    // Response dengan html sederhana
    res.end('Hello World')

});

server.listen(POST, HOST, ()=>{
    console.log(`Server Running at http://${HOST}:${POST}/`);
})