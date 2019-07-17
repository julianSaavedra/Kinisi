tests
testNewDraftIsInitilizeWithNoParticleObservationDrafts

	| universeDraft |
	
	universeDraft := UniverseObservationDraft new.
	
	self assert: universeDraft particleDrafts isEmpty