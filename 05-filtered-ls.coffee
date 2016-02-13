fs = require 'fs'

extension = "." + process.argv[3]

fs.readdir process.argv[2], (error, files) ->
	for file in files
		if file.endsWith extension
			console.log file
