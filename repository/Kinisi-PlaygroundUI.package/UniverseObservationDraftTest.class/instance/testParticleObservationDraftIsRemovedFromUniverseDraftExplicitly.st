tests
testParticleObservationDraftIsRemovedFromUniverseDraftExplicitly

	| universeDraft particleDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservation.
	particleDraft := universeDraft newParticleObservation.
	self assert: (universeDraft particles includes: particleDraft).
	
	universeDraft remove: particleDraft.
	
	self deny: (universeDraft particles includes: particleDraft)
	