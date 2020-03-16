tests
testParticleBackgroundIsTheSameAsTheUniverseBackground

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithOneObservation.
	particleObservation := universeObservation particles first.
	
	self
		assert: particleObservation background
		equals: universeObservation background