tests
testPhysicalStatesAreNotEqualIfMassesAreDifferent

	| aState anotherState |
	aState := PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	anotherState := PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: testResource twoKilograms
		position: position
		velocity: velocity
		andAcceleration: acceleration.
		
	self deny: aState equals: anotherState