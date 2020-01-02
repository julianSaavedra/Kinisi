tests
testSavingParticleObservationDoesNotChangeUniverseObservation

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithOneObservation.
	particleObservation := universeObservation particleObservations first.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: particleObservation.
	
	particleObservation save.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: particleObservation