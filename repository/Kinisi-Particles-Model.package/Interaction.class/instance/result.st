accessing
result

	| distanceVector squaredDistance |
	distanceVector := causingParticlePhysicalState position - overParticlePhysicalState position.
	squaredDistance := distanceVector norm * distanceVector norm.
	^distanceVector normalized *
			(self gravitationalConstant * 
				causingParticlePhysicalState mass * overParticlePhysicalState mass
					/ squaredDistance)