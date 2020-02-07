tests
testSingleParticleObservationIsPresentInUniverseObservationAfterOneSingleDraftIsSaved

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	
	self assert: universeObservation particles isEmpty.

	universeObservation newParticleObservation.

	self
		assert: universeObservation particles size
		equals: 1