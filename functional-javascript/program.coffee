Spy =	(targetObject, methodName) ->
	spy = count: 0
	originalMethod = targetObject[methodName]
	targetObject[methodName] = ->
		spy.count++
		originalMethod.apply this, arguments
	return spy
module.exports = Spy
