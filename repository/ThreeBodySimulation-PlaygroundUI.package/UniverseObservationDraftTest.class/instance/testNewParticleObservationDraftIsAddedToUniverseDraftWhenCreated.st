tests
testNewParticleObservationDraftIsAddedToUniverseDraftWhenCreated

	| universeDraft particleDraft |
	universeDraft := UniverseObservationDraft new.
	
	particleDraft := universeDraft newParticleObservationDraft.
	
	self assert: (universeDraft particles includes: particleDraft)