test objects
particleA

	^ParticleState
		forParticleNamed: 'ParticleA'
		withMass: resource oneKilogram
		position: resource oneMeterInAllComponentsVector
		velocity: (resource velocityVectorWithAllComponentsWithAmount: 2)
		andAcceleration: (resource accelerationVectorWithAllComponentsWithAmount: 2)