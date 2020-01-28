tests
testParticlesAreNotEqualIfPositionsAreDifferent

	| particle anotherParticle |
	particle := ParticleState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	anotherParticle := ParticleState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: testResource nullPosition
		velocity: velocity
		andAcceleration: acceleration.
		
	self deny: particle equals: anotherParticle