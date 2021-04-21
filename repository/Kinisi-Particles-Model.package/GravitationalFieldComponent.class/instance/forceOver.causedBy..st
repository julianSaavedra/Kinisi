as yet unclassified
forceOver: particle causedBy: anObject

	| distanceVector squaredDistance forceModule |
	distanceVector := position - particle position.
	squaredDistance := distanceVector norm * distanceVector norm.
	forceModule := self gravitationalConstant * particle mass * mass / squaredDistance.
	^distanceVector normalized * forceModule