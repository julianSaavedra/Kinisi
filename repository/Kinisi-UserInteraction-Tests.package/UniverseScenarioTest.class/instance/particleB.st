test objects
particleB

	^ParticleState
		forParticleNamed: 'ParticleB'
		withMass: resource twoKilograms
		position: (resource vectorWithAllComponentsInMeterAndAmount: 2)
		velocity: (resource velocityVectorWithAllComponentsWithAmount: 2)
		andAcceleration: (resource accelerationVectorWithAllComponentsWithAmount: 2)