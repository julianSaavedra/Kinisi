tests
testSaveOfRemovedParticleObservationFails

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithOneObservation.
	observationToBeRemoved := universeObservation particles first.
	observationToBeRemoved removeYourselfFromUniverse.
	
	self
		should: [ observationToBeRemoved save]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Particle observation has been removed from universe'