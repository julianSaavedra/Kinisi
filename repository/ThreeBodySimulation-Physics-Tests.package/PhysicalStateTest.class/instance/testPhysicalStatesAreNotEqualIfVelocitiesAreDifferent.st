tests
testPhysicalStatesAreNotEqualIfVelocitiesAreDifferent

	| aState anotherState |
	aState := PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	anotherState := PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: testResource nullVelocity
		andAcceleration: acceleration.
		
	self deny: aState equals: anotherState