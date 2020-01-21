tests
testRemovingParticleAgainAfterItWasRemovedDoesNotFail

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithOneObservation.
	observationToBeRemoved := universeObservation particleObservations first.
	observationToBeRemoved removeYourselfFromUniverse.
	
	self
		shouldnt: [ observationToBeRemoved removeYourselfFromUniverse ]
		raise: UserInterfaceError