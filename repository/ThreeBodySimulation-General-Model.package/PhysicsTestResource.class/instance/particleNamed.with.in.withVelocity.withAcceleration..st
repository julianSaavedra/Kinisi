utilities
particleNamed: aName with: mass in: position withVelocity: velocity withAcceleration: acceleration

	^ ParticleState
		forParticleNamed: aName
		withMass: mass
		position: position
		velocity: velocity
		andAcceleration: acceleration