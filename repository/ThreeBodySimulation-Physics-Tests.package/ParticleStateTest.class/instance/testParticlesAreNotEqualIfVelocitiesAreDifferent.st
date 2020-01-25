tests
testParticlesAreNotEqualIfVelocitiesAreDifferent

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
		position: position
		velocity: testResource nullVelocity
		andAcceleration: acceleration.
		
	self deny: particle equals: anotherParticle