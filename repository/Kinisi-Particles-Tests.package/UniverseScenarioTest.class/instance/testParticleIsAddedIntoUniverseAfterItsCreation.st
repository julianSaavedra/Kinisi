test
testParticleIsAddedIntoUniverseAfterItsCreation

	| particle |
	particle := workbench newParticle.

	self assertScenarioParticlesIncludes: particle