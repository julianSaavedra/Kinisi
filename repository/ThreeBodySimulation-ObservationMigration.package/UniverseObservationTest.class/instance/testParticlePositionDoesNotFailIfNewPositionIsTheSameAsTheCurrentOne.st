tests
testParticlePositionDoesNotFailIfNewPositionIsTheSameAsTheCurrentOne

	| universeObservation existingParticleObservation |
	universeObservation := self universeObservationWithOneObservation.
	existingParticleObservation := universeObservation particleObservations first.
	
	self
		shouldnt: [existingParticleObservation position: existingParticleObservation position]
		raise: PhysicsModelError