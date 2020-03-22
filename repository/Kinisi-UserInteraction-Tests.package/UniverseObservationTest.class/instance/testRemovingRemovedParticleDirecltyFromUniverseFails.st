tests
testRemovingRemovedParticleDirecltyFromUniverseFails

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithOneObservation.
	observationToBeRemoved := universeObservation particles first.
	observationToBeRemoved removeYourselfFromUniverse.
		
	self
		should: [ universeObservation remove: observationToBeRemoved ]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Particle observation is not included in this universe observation'