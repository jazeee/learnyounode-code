repeat = (operation, number) ->
	return if number <= 0
	operation()
	--number
	count = Math.floor number / 4
	remaining = number - 3 * count
	setImmediate ->
		repeat operation, count
	setImmediate ->
		repeat operation, count
	setImmediate ->
		repeat operation, count
	setImmediate ->
		repeat operation, remaining
module.exports = repeat
