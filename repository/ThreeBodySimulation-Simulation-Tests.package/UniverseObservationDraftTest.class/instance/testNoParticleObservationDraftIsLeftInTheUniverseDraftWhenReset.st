tests
testNoParticleObservationDraftIsLeftInTheUniverseDraftWhenReset

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservationDraft.
	self assert: universeDraft particleDrafts notEmpty.
	
	universeDraft reset.
	
	self assert: universeDraft particleDrafts isEmpty