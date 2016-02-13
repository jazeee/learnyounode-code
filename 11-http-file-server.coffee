http = require "http"
fs = require "fs"

server = http.createServer ( request, response ) ->
	stream = fs.createReadStream process.argv[3]
	stream.pipe response
server.listen process.argv[2]
