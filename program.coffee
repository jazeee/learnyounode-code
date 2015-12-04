net = require "net"
strftime = require "strftime"

server = net.createServer ( socket ) ->
	formattedDate = strftime "%Y-%m-%d %H:%M"
	socket.write formattedDate
	socket.end()
server.listen process.argv[2]
