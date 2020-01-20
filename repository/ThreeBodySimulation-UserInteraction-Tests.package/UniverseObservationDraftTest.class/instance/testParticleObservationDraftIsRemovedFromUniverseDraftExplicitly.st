tests
testParticleObservationDraftIsRemovedFromUniverseDraftExplicitly

	| universeDraft particleDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservationDraft.
	particleDraft := universeDraft newParticleObservationDraft.
	self assert: (universeDraft particleDrafts includes: particleDraft).
	
	universeDraft remove: particleDraft.
	
	self deny: (universeDraft particleDrafts includes: particleDraft)
	