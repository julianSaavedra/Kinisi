test
testUniverseIsCreatedFromScenarioWithParticlesAsDescribedInScenario

	self populateParticleAObservationsIn: workbench newParticle.
	self populateParticleBObservationsIn: workbench newParticle.
	
	self
		assert: workbench scenario universeState
		hasParticlesAsIn: workbench scenario 