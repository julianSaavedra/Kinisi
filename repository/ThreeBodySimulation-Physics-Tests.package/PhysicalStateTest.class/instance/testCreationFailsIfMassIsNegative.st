tests
testCreationFailsIfMassIsNegative

	self
		should: [ PhysicalState
				forParticleNamed: 'ParticleA'
				withMass: testResource negativeMass
				position: position
				velocity: velocity
				andAcceleration: acceleration ]
		raise: PhysicsModelError