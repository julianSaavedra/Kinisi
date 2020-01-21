tests
testParticleObservationRemovesItselfFromUniverseObservation

	| universeObservation observationToBeRemoved remainingObservation |
	universeObservation := self universeObservationWithTwoParticles.
	observationToBeRemoved := universeObservation particleObservations first.
	remainingObservation := universeObservation particleObservations second.
	
	observationToBeRemoved removeYourselfFromUniverse.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: remainingObservation