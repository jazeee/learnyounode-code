loadUsers = (userIds, loadFunction, done) ->
	users = []
	completionCount = 0
	map userIds, (userId) ->
		loadFunction userId, (user) ->
			users.push user
			completionCount++
			if completionCount == userIds.length
				done users

module.exports = loadUsers
