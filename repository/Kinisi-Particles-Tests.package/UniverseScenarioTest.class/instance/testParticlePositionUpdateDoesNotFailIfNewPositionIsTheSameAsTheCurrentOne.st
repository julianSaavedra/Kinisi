test
testParticlePositionUpdateDoesNotFailIfNewPositionIsTheSameAsTheCurrentOne

	| particle |
	particle := workbench newParticle.
	
	self
		shouldnt: [ particle position: particle position ]
		raise: PhysicsModelError