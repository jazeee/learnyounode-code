fs=require 'fs'

fs.readFile process.argv[2], 'utf8', (error, data) ->
	throw error if error?
	console.log data.split('\n').length - 1
