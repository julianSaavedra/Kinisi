test
testUniverseIsEmptyAfterAllParticlesAreRemoved

	workbench newParticle; newParticle.
	self denyEmpty: workbench scenario particles.
	
	workbench removeAllParticles.
	
	self assertEmpty: workbench scenario particles
