tests
testParticleObservationRemovesItselfFromUniverseObservation

	| universeObservation observationToBeRemoved remainingObservation |
	universeObservation := self universeObservationWithTwoParticles.
	observationToBeRemoved := universeObservation particles first.
	remainingObservation := universeObservation particles second.
	
	observationToBeRemoved removeYourselfFromUniverse.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: remainingObservation