tests
testTwoParticleObservationsArePresentInUniverseObservationWhenTwoDraftsAreSaved

	| universeObservation |
	universeObservation := UniverseObservation new.
	self assert: universeObservation particles isEmpty.

	universeObservation newParticleObservation.
	universeObservation newParticleObservation.

	self
		assert: universeObservation particles size
		equals: 2