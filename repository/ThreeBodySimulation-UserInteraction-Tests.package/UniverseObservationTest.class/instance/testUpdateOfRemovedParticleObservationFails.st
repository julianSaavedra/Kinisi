tests
testUpdateOfRemovedParticleObservationFails

	| universeObservation observationToBeRemoved |
	universeObservation := self universeObservationWithOneObservation.
	observationToBeRemoved := universeObservation particles first.
	observationToBeRemoved removeYourselfFromUniverse.
	
	self particleAUpdateActions do: [:updateAction |
		self
			should: [ updateAction value: observationToBeRemoved ]
			raise: UserInterfaceError
			whoseDescriptionIncludes: 'Particle observation has been removed from universe' ]