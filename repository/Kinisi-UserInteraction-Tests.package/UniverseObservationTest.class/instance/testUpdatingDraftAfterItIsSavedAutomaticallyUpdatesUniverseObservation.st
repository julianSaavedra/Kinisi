tests
testUpdatingDraftAfterItIsSavedAutomaticallyUpdatesUniverseObservation

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	self populateParticleAObservationsInAndSave: draft.
	
	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: draft.
	
	self populateParticleBObservationsIn: draft.

	self
		assertSingleParticleIn: universeObservation
		observesTheSameAs: draft