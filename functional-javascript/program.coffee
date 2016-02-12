getDependencies = (tree) ->
	return [] unless tree?
	versions = Object.keys(tree).reduce (priorDependencies, name) ->
		childDependency = tree[name]
		priorDependencies.push "#{name}@#{childDependency.version}"
		nextDependencies = childDependency.dependencies
		childDependencies = getDependencies nextDependencies
		priorDependencies.push childDependencies...
		priorDependencies
	, []
	versions

module.exports = (tree)->
	{dependencies} = tree if tree?
	results = getDependencies(dependencies)
	results = results.reduce (unique, result) ->
		unique.push result if (unique.indexOf result) == -1
		unique
	, []
	results.sort()
