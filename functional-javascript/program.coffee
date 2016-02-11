module.exports = (words) ->
	wordCount = {}
	words.reduce (wordCountPassed, word) ->
		wordCount[word] ?= 0
		wordCount[word]++
	, {}
	return wordCount
