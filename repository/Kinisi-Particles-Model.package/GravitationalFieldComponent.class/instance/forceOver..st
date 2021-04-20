as yet unclassified
forceOver: particle

	| distanceVector squaredDistance forceModule |
	distanceVector := position - particle position.
	squaredDistance := distanceVector norm * distanceVector norm.
	forceModule := self gravitationalConstant * particle mass * mass / squaredDistance.
	^distanceVector normalized * forceModule