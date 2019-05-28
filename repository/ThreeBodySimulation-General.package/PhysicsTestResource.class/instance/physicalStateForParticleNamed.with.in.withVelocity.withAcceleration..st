utilities
physicalStateForParticleNamed: aName with: mass in: position withVelocity: velocity withAcceleration: acceleration

	^ PhysicalState
		forParticleNamed: aName
		withMass: mass
		position: position
		velocity: velocity
		andAcceleration: acceleration