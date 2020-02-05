tests
testSingleParticleObservationIsPresentInUniverseObservationAfterOneSingleDraftIsSaved

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservation.
	
	self assert: universeObservation particles isEmpty.

	draft save.

	self
		assert: universeObservation particles size
		equals: 1