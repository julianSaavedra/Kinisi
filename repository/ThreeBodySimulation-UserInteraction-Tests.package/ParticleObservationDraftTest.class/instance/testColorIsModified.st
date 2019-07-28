tests
testColorIsModified

	| draft universeDraft newColor |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	newColor := Color blue.
	
	draft color: newColor.
	
	self assert: draft color equals: newColor