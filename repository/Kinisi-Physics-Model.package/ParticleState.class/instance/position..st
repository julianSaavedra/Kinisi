modifying
position: newPosition

	^self class
		forParticleNamed: particleName
		withMass: mass
		position: newPosition
		velocity: velocity
		andAcceleration: acceleration