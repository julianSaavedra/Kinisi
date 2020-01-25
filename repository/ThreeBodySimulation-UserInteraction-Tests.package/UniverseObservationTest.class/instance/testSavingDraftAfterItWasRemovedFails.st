tests
testSavingDraftAfterItWasRemovedFails

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	self populateParticleAObservationsInAndSave: draft.
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: draft.
	
	draft removeYourselfFromUniverse.
	
	self assert: universeObservation particles isEmpty.
	self
		should: [ draft save ]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Particle observation has been removed from universe'