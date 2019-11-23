tests
testUniverseStateWithNoParticleStatesIsCreatedFromNewObservation

	self
		assert: UniverseObservation new universeState
		equals: (ObservableUniverseState with: #())
