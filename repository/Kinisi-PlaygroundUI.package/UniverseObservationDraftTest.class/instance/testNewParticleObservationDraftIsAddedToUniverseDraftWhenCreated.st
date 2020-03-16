tests
testNewParticleObservationDraftIsAddedToUniverseDraftWhenCreated

	| universeDraft particleDraft |
	universeDraft := UniverseObservationDraft new.
	
	particleDraft := universeDraft newParticleObservation.
	
	self assert: (universeDraft particles includes: particleDraft)