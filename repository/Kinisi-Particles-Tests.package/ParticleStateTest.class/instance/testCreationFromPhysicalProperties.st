tests
testCreationFromPhysicalProperties

	| particle |
	particle := ParticleState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.

	self assert: particle particleName equals: #ParticleA.
	self assert: particle mass equals: oneKilogram.
	self assert: particle position equals: position.
	self assert: particle velocity equals: velocity.
	self assert: particle acceleration equals: acceleration