tests
testParticlesAreNotEqualIfMassesAreDifferent

	| particle anotherParticle |
	particle := ParticleState
		forParticleNamed: 'ParticleA'
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	anotherParticle := ParticleState
		forParticleNamed: 'ParticleA'
		withMass: testResource twoKilograms
		position: position
		velocity: velocity
		andAcceleration: acceleration.
		
	self deny: particle equals: anotherParticle