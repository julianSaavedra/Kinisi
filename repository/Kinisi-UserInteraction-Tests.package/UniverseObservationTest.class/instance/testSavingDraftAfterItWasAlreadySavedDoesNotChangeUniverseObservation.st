tests
testSavingDraftAfterItWasAlreadySavedDoesNotChangeUniverseObservation

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservation.
	self populateParticleAObservationsInAndSave: draft.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: draft.
	
	draft save.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: draft