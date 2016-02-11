logger = (namespace) ->
	() ->
		params = [namespace, arguments...]
		console.log.apply null, params
module.exports = logger
