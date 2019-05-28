tests
testCreationFailsIfNameIsEmpty

	self
		should: [ PhysicalState
				forParticleNamed: ''
				withMass: oneKilogram
				position: position
				velocity: velocity
				andAcceleration: acceleration ]
		raise: PhysicsModelError