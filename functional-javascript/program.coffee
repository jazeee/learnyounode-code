repeat = (operation, number) ->
	return if number <= 0
	operation()
	return {callback: repeat, operation, number: --number}

trampoline = (callback) ->
	return (operation, number) ->
		while callback?
			response = callback operation, number
			{callback, operation, number} = response
module.exports = (operation, number) ->
	trampoline repeat(operation, number)
