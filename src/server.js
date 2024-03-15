var http = require('http');
const port = 8080;

var server = http.createServer(function(req, res) {
  res.writeHead(200);
  res.end('Hello World');
});
server.listen(port, () => {
    console.log(`Server running at port ${port}/`);
  });