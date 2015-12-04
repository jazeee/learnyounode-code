getUrlOutput = (url, callback) ->
	http = require "http"
	bufferList = require "bl"

	http.get url, (response) ->
		response.pipe bufferList( (error, data) ->
			return callback error if error?
			callback null, data.toString()
		)

module.exports = getUrlOutput
