tests
testTwoParticleObservationsArePresentInUniverseObservationWhenTwoDraftsAreSaved

	| universeObservation |
	universeObservation := UniverseObservation new.
	self assert: universeObservation particles isEmpty.

	universeObservation newParticleObservationDraft save.
	universeObservation newParticleObservationDraft save.

	self
		assert: universeObservation particles size
		equals: 2