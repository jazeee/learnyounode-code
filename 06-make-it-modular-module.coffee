getFiles = (directory, extension, callback) ->
	fs = require('fs')
	extension = "." + extension
	fs.readdir directory, (error, filenames)->
		if error?
			callback error
			return
		result = []
		for filename in filenames
			index = filename.indexOf extension
			if index != -1 && index == (filename.length - extension.length)
				result.push filename
		callback null, result

module.exports = getFiles
