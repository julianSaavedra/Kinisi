test - to be removed
testCreationFromDraft

	| universe draft |
	draft := self twoParticlesUniverseDraftWithNonNullNorDefaultValues.
	
	universe := ObservableUniverse from: draft.
	
	self assert: universe wasBuiltAs: draft