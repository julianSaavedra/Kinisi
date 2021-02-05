test
testUniverseIsCreatedFromScenarioWithParticlesAsDescribedInScenario

	self populateParticleAPropertiesIn: workbench newParticle.
	self populateParticleBPropertiesIn: workbench newParticle.
	
	self
		assert: workbench scenario universeState
		hasParticlesAsIn: workbench scenario 