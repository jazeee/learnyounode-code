http = require "http"
bufferList = require "bl"

url = process.argv[2]

result = ""
http.get url, (response) ->
	response.pipe bufferList( (error, data) ->
		result = data.toString()
		console.log result.length
		console.log result
	)
