test
testParticleNameUpdateDoesNotFailIfNewNameIsTheSameAsTheCurrentOne

	| particle |
	particle := workbench newParticle.

	self
		shouldnt: [ particle particleName: particle particleName ]
		raise: PhysicsModelError