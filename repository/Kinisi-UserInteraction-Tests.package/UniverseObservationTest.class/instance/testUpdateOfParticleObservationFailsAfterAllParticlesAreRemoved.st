tests
testUpdateOfParticleObservationFailsAfterAllParticlesAreRemoved

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithOneObservation.
	observationToBeRemoved := universeObservation particles first.
	universeObservation removeAllParticles.
	
	self particleAUpdateActions do: [:updateAction |
		self
			should: [ updateAction value: observationToBeRemoved ]
			raise: UserInterfaceError
			whoseDescriptionIncludes: 'Observation is no longer valid' ]