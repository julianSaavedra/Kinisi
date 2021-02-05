tests
testCreationFailsIfMassIsNonPositive

	self
		should: [ ParticleState
				forParticleNamed: 'ParticleA'
				withMass: testResource negativeMass
				position: position
				velocity: velocity
				andAcceleration: acceleration ]
		raise: PhysicsModelError.
		
	self
		should: [ ParticleState
				forParticleNamed: 'ParticleA'
				withMass: testResource zeroKilograms
				position: position
				velocity: velocity
				andAcceleration: acceleration ]
		raise: PhysicsModelError