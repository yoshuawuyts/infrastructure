const http = require('http')

http.createServer(function (req, res) {
  console.log(process.env)
  res.writeHead(200)
  res.end('Hello World!')
}).listen(8080)
