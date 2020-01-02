tests
testSingleParticleObservationIsPresentInUniverseObservationAfterOneSingleDraftIsSaved

	| universeObservation draft |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	
	self assert: universeObservation particleObservations isEmpty.

	draft save.

	self
		assert: universeObservation particleObservations size
		equals: 1