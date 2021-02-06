modifying
acceleration: newAcceleration

	^self class
		forParticleNamed: particleName
		withMass: mass
		position: position
		velocity: velocity
		andAcceleration: newAcceleration