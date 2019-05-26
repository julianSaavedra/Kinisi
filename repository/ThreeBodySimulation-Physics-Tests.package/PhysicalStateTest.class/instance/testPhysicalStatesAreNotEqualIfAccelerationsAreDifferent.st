tests
testPhysicalStatesAreNotEqualIfAccelerationsAreDifferent

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
		velocity: velocity
		andAcceleration: testResource nullAcceleration.

	self deny: aState equals: anotherState