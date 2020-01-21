tests
testParticleNameUpdateDoesNotFailIfNewNameIsTheSameAsTheCurrentOne

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithOneObservation.
	particleObservation := universeObservation particleObservations first.
	
	self
		shouldnt: [particleObservation particleName: particleObservation particleName]
		raise: PhysicsModelError