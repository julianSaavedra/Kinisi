tests
testParticleObservationRemovesItselfFromUniverseObservation

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithTwoParticles.
	observationToBeRemoved := universeObservation particles first.
	
	observationToBeRemoved removeYourselfFromUniverse.
	
	self deny: (universeObservation particles includes: observationToBeRemoved)