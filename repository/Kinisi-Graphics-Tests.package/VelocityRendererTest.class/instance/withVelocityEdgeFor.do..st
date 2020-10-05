support
withVelocityEdgeFor: shape do: block

	| particleConnectedEdges |
	particleConnectedEdges := shape connectedEdges.
	self
		assert: particleConnectedEdges size = 1
		description: 'More than one edge; not possible to figure out velocity element'.
	block value: particleConnectedEdges first.
	