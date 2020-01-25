tests
testCreationFailsIfNameIsEmpty

	self
		should: [ ParticleState
				forParticleNamed: ''
				withMass: oneKilogram
				position: position
				velocity: velocity
				andAcceleration: acceleration ]
		raise: PhysicsModelError