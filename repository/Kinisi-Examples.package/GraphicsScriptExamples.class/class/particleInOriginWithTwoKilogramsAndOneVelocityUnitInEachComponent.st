data -  scenarios
particleInOriginWithTwoKilogramsAndOneVelocityUnitInEachComponent

	| testResource |
	testResource := PhysicsTestResource new.
	^ParticleState
		forParticleNamed: 'ParticleA'
		withMass: testResource twoKilograms
		position: testResource nullPosition
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1)
		andAcceleration: testResource nullAcceleration