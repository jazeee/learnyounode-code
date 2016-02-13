getUrlOutput = require "./09-juggling-async-module"

urls = process.argv[2..]

results = []
count = 0
processUrl = (url, index) ->
	getUrlOutput url, (error, result) ->
		return console.error error if error?
		results[index] = result
		count++
		if count == urls.length
			for result in results
				console.log result

for url, index in urls
	processUrl url, index
