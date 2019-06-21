data examples
physicalStateInOriginWithTwoKilogramsAndOneVelocityUnitInEachComponent

	| testResource |
	testResource := PhysicsTestResource new.
	^PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: testResource twoKilograms
		position: testResource nullPosition
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1)
		andAcceleration: testResource nullAcceleration