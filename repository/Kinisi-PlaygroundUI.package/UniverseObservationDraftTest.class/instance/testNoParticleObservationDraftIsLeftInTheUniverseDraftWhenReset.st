tests
testNoParticleObservationDraftIsLeftInTheUniverseDraftWhenReset

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservationDraft.
	self assert: universeDraft particles notEmpty.
	
	universeDraft reset.
	
	self assert: universeDraft particles isEmpty