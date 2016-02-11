duckCount = ->
	ducks = [arguments...]
	ducks.reduce (count, duck) ->
		count++ if Object.prototype.hasOwnProperty.call duck, 'quack'
		return count
	, 0
module.exports = duckCount
