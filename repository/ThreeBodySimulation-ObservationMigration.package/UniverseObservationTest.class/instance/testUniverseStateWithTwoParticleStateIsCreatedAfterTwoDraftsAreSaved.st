tests
testUniverseStateWithTwoParticleStateIsCreatedAfterTwoDraftsAreSaved

	| universeObservation |
	universeObservation := UniverseObservation new.
	self assert: universeObservation universeState physicalStates isEmpty.

	universeObservation newParticleObservationDraft save.
	universeObservation newParticleObservationDraft save.

	self
		assert: universeObservation universeState physicalStates size
		equals: 2