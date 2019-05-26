tests
testHash

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
		andAcceleration: acceleration.

	self assert: aState hash equals: anotherState hash