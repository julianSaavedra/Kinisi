tests
testAccelerationIsModified

	| draft universeDraft newAcceleration |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	newAcceleration := testResource accelerationVectorWithAllComponentsWithAmount: 2.
	
	draft acceleration: newAcceleration.
	
	self assert: draft acceleration equals: newAcceleration