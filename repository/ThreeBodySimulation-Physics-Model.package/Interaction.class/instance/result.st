accessing
result

	| distanceVector squaredDistance |
	distanceVector := causingParticle position - overParticle position.
	squaredDistance := distanceVector norm * distanceVector norm.
	^distanceVector normalized
		*
			(self gravitationalConstant * causingParticle mass * overParticle mass
				/ squaredDistance)