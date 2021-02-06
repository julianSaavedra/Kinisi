test - scenario depiction
testParticleBackgroundIsTheSameAsTheUniverseBackground

	| universe particle |
	particle := workbench newParticle.	
	universe := workbench scenario.

	self
		assert: universe background
		equals: particle background