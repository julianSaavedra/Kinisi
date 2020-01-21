tests
testTwoParticleObservationsArePresentInUniverseObservationWhenTwoDraftsAreSaved

	| universeObservation |
	universeObservation := UniverseObservation new.
	self assert: universeObservation particleObservations isEmpty.

	universeObservation newParticleObservationDraft save.
	universeObservation newParticleObservationDraft save.

	self
		assert: universeObservation particleObservations size
		equals: 2