test
testParticleRemovesItselfFromUniverse

	| particleToBeRemoved |
	particleToBeRemoved := workbench newParticle.
	
	particleToBeRemoved removeYourselfFromUniverse.
	
	self denyScenarioParticlesIncludes: particleToBeRemoved