module.exports = (goodUsers) ->
	return (submittedUsers) ->
		submittedUsers.every (user) ->
			goodUsers.some (goodUser) ->
				goodUser.id == user.id
