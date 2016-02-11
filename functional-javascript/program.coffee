arrayMap = (array, callback) ->
	array.reduce (prior, value, index) ->
		prior[index] = callback value
		prior
	, []
module.exports = arrayMap
