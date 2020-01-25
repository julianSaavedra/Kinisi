test objects
particleA

	| physicsResource |
	physicsResource := PhysicsTestResource new.
	^ParticleState
		forParticleNamed: 'ParticleA'
		withMass: physicsResource oneKilogram
		position: physicsResource oneMeterInAllComponentsVector
		velocity: (physicsResource velocityVectorWithAllComponentsWithAmount: 2)
		andAcceleration: (physicsResource accelerationVectorWithAllComponentsWithAmount: 2)