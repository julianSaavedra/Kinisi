modifying
velocity: newVelocity

	^ self class
		forParticleNamed: particleName
		withMass: mass
		position: position
		velocity: newVelocity
		andAcceleration: acceleration