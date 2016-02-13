curryN = (func, argumentLength) ->
	argumentLength ?= func.length
	(parameter) ->
		if argumentLength <= 1
			func parameter
		else
			curryN func.bind(this, parameter), argumentLength - 1

module.exports = curryN
