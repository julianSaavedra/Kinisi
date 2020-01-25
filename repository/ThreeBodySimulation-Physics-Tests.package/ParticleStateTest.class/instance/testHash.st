tests
testHash

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
		velocity: velocity
		andAcceleration: acceleration.

	self assert: particle hash equals: anotherParticle hash