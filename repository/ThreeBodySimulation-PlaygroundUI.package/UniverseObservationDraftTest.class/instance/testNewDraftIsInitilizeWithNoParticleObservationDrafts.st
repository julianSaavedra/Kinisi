tests
testNewDraftIsInitilizeWithNoParticleObservationDrafts

	| universeDraft |
	
	universeDraft := UniverseObservationDraft new.
	
	self assert: universeDraft particles isEmpty