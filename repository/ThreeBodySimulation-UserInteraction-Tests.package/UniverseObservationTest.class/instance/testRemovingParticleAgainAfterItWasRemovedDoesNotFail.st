tests
testRemovingParticleAgainAfterItWasRemovedDoesNotFail

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithOneObservation.
	observationToBeRemoved := universeObservation particles first.
	observationToBeRemoved removeYourselfFromUniverse.
	
	self
		shouldnt: [ observationToBeRemoved removeYourselfFromUniverse ]
		raise: UserInterfaceError