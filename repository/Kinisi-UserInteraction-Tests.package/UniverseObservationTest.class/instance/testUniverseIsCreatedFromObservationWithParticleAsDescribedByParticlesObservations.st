tests
testUniverseIsCreatedFromObservationWithParticleAsDescribedByParticlesObservations

	| universeObservation |
	universeObservation := self universeObservationWithTwoParticles.
	
	self
		assert: universeObservation universeState
		hasParticlesAsIn: universeObservation