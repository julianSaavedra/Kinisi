tests
testAccelerationIsModified

	| draft universeDraft newAcceleration |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservation.
	newAcceleration := testResource accelerationVectorWithAllComponentsWithAmount: 2.
	
	draft acceleration: newAcceleration.
	
	self assert: draft acceleration equals: newAcceleration