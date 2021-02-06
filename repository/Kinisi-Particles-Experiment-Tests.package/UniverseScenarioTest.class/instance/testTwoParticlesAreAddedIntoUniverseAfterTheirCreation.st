test
testTwoParticlesAreAddedIntoUniverseAfterTheirCreation

	| addedParticles |
	self assertEmpty: workbench scenario particles.

	addedParticles := Array with: workbench newParticle with: workbench newParticle.

	self
		assertCollection: workbench scenario particles
		includesAll: addedParticles