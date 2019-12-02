tests
testUniverseStateWithOneParticleStateIsCreatedAfterDraftIsSaved

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	
	self assert: universeObservation universeState physicalStates isEmpty.

	draft save.

	self
		assert: universeObservation universeState physicalStates size
		equals: 1