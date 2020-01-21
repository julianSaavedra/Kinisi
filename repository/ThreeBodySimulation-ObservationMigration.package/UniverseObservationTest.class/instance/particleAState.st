test objects
particleAState

	| physicsResource |
	physicsResource := PhysicsTestResource new.
	^PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: physicsResource oneKilogram
		position: physicsResource oneMeterInAllComponentsVector
		velocity: (physicsResource velocityVectorWithAllComponentsWithAmount: 2)
		andAcceleration: (physicsResource accelerationVectorWithAllComponentsWithAmount: 2)