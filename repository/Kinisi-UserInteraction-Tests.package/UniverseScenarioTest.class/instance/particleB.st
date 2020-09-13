test objects
particleB

	| physicsResource |
	physicsResource := PhysicsTestResource new.
	^ParticleState
		forParticleNamed: 'ParticleB'
		withMass: physicsResource twoKilograms
		position: (physicsResource vectorWithAllComponentsInMeterAndAmount: 2)
		velocity: (physicsResource velocityVectorWithAllComponentsWithAmount: 2)
		andAcceleration: (physicsResource accelerationVectorWithAllComponentsWithAmount: 2)