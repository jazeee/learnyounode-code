module.exports = (messages) ->
	result = messages.map (messageObject) ->
		messageObject.message
	.filter (message) ->
		message.length < 50
