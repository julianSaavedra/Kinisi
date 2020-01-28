tests
testSingleParticleObservationIsPresentInUniverseObservationWithSameStateAndColorAsSavedDraft

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	
	self populateParticleAObservationsInAndSave: draft.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: draft