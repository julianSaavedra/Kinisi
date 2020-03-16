tests
testVelocityIsModified

	| draft universeDraft newVelocity |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservation.
	newVelocity := testResource velocityVectorWithAllComponentsWithAmount: 2.
	
	draft velocity: newVelocity.
	
	self assert: draft velocity equals: newVelocity