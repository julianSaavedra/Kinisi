tests
testPositionIsModified

	| draft universeDraft newPosition |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	newPosition := testResource oneMeterInAllComponentsVector.
	
	draft position: newPosition.
	
	self assert: draft position equals: newPosition