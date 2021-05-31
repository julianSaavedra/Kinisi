calculation
forceCausedBy: causingParticle over: particle

	| squaredDistance distanceVector forceModule |

	distanceVector := causingParticle position - particle position.
	squaredDistance := distanceVector norm * distanceVector norm.
	forceModule := self gravitationalConstant * particle mass
		* causingParticle mass / squaredDistance.
	^ distanceVector normalized * forceModule