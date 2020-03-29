support
withVelocityEdgeFor: element do: block

	| particleElementConnectedEdges |
	particleElementConnectedEdges := element connectedEdges.
	self
		assert: particleElementConnectedEdges size = 1
		description: 'More than one edge; not possible to figure out velocity element'.
	block value: particleElementConnectedEdges first.
	