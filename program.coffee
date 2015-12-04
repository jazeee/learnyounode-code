http = require "http"
map = require 'through2-map'
url = require 'url'

server = http.createServer ( request, response ) ->
	parsedUrl = url.parse request.url, true
	date = new Date parsedUrl.query.iso
	time = switch parsedUrl.pathname
		when "/api/parsetime"
			{
				hour: date.getHours()
				minute: date.getMinutes()
				second: date.getSeconds()
			}
		when "/api/unixtime"
			{unixtime: date.getTime()}
		else
			null
	if !date?
		response.writeHead 400
		return response.end()
	console.log parsedUrl, time
	response.writeHead 200, { 'Content-Type': 'application/json' }
	response.write JSON.stringify time
	response.end()

server.listen process.argv[2]
