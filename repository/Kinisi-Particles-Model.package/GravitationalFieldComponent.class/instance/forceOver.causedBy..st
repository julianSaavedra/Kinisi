calculation
forceOver: particle causedBy: otherParticles

	| distanceVector squaredDistance forceModule causingParticle |
	^particle particleName = fieldCausingParticleName
		ifFalse: [
			causingParticle := self causingParticleAmong: otherParticles.
			distanceVector := causingParticle position - particle position.
			squaredDistance := distanceVector norm * distanceVector norm.
			forceModule := self gravitationalConstant * particle mass * causingParticle mass / squaredDistance.
			distanceVector normalized * forceModule ]
		ifTrue: [ MeasureVector nullWith: UnitProvider soleInstance newton ]
	