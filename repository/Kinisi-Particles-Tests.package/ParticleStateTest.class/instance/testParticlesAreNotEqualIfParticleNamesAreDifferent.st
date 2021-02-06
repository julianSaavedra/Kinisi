tests
testParticlesAreNotEqualIfParticleNamesAreDifferent

	| particle anotherParticle |
	particle := ParticleState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	anotherParticle := ParticleState
		forParticleNamed: 'ParticleB'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.

	self deny: particle equals: anotherParticle