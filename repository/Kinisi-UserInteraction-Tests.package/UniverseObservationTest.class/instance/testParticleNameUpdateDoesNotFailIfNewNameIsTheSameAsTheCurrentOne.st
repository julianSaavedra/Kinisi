tests
testParticleNameUpdateDoesNotFailIfNewNameIsTheSameAsTheCurrentOne

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithOneObservation.
	particleObservation := universeObservation particles first.
	
	self
		shouldnt: [particleObservation particleName: particleObservation particleName]
		raise: PhysicsModelError