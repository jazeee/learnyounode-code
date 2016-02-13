http = require "http"

url = process.argv[2]

result = ""
http.get url, (response) ->
	response.setEncoding 'utf8'
	response.on 'data', (data) ->
		console.log data
	response.on 'error', (error) -> console.error error
