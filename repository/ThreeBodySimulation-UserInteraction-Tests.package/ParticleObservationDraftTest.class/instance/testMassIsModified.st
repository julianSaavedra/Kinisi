tests
testMassIsModified

	| draft universeDraft newMass |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	newMass := testResource twoKilograms.
	
	draft mass: newMass.
	
	self assert: draft mass equals: newMass