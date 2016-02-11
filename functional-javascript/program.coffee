reduceWords = (words, callback, wordCount, index = 0) ->
	return wordCount unless words.length
	callback wordCount, words[0], index, words
	index++
	return reduceWords words.slice(1), callback, wordCount, index
	
module.exports = reduceWords
