tests - in progress
testRemovingParticleObservationFromAnotherUniverseFailsEvenIfParticleObservationIsTheSameAsTheParticleObservationInTargetUniverse

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithParticleAOnly.
	observationToBeRemoved := self universeObservationWithParticleAOnly particleObservations first.
	
	self assertSingleParticleIn: universeObservation observesTheSameAs: observationToBeRemoved.
	self
			should: [ universeObservation remove: observationToBeRemoved ]
			raise: UserInterfaceError
			whoseDescriptionIncludes: 'Particle observation to be removed is from another universe observation'