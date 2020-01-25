tests
testParticlePositionDoesNotFailIfNewPositionIsTheSameAsTheCurrentOne

	| universeObservation existingParticleObservation |
	universeObservation := self universeObservationWithOneObservation.
	existingParticleObservation := universeObservation particles first.
	
	self
		shouldnt: [existingParticleObservation position: existingParticleObservation position]
		raise: PhysicsModelError