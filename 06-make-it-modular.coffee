getFiles = require "./06-make-it-modular-module"

getFiles process.argv[2], process.argv[3], (error, files) ->
	if error?
		console.error error
	else
		for file in files
			console.log file
