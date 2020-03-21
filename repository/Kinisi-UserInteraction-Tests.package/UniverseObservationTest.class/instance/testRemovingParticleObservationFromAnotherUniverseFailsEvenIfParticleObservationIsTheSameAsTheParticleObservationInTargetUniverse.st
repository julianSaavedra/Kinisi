tests
testRemovingParticleObservationFromAnotherUniverseFailsEvenIfParticleObservationIsTheSameAsTheParticleObservationInTargetUniverse

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithParticleAOnly.
	observationToBeRemoved := self universeObservationWithParticleAOnly particles first.
	
	self assert: universeObservation particles first observesTheSameAs: observationToBeRemoved.
	self
		should: [ universeObservation remove: observationToBeRemoved ]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Particle observation to be removed is from another universe observation'