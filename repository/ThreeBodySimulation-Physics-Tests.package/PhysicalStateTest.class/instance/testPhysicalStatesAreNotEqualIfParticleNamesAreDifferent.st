tests
testPhysicalStatesAreNotEqualIfParticleNamesAreDifferent

	| aState anotherState |
	aState := PhysicalState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	anotherState := PhysicalState
		forParticleNamed: 'ParticleB'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.

	self deny: aState equals: anotherState