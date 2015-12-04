http = require "http"
map = require('through2-map')

server = http.createServer ( request, response ) ->
	request.pipe map (chunk) ->
		chunk.toString().toUpperCase()
	.pipe response
server.listen process.argv[2]
