tests
testTwoParticleObservationsArePresentInUniverseObservationWhenTwoDraftsAreSaved

	| universeObservation |
	universeObservation := UniverseObservation new.
	self assert: universeObservation particles isEmpty.

	universeObservation newParticleObservation save.
	universeObservation newParticleObservation save.

	self
		assert: universeObservation particles size
		equals: 2