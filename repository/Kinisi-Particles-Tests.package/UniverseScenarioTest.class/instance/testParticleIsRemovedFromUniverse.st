test
testParticleIsRemovedFromUniverse

	| particle |
	particle := workbench newParticle.
	self assertScenarioParticlesIncludes: particle.

	workbench remove: particle.
	
	self denyScenarioParticlesIncludes: particle