tests
testPositionIsModified

	| draft universeDraft newPosition |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservation.
	newPosition := testResource oneMeterInAllComponentsVector.
	
	draft position: newPosition.
	
	self assert: draft position equals: newPosition