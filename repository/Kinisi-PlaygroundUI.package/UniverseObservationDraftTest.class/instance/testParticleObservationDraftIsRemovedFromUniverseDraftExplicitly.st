tests
testParticleObservationDraftIsRemovedFromUniverseDraftExplicitly

	| universeDraft particleDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservationDraft.
	particleDraft := universeDraft newParticleObservationDraft.
	self assert: (universeDraft particles includes: particleDraft).
	
	universeDraft remove: particleDraft.
	
	self deny: (universeDraft particles includes: particleDraft)
	