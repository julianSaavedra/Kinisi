tests
testAccessingPhysicalStatesInUniverseMustReturnADifferentCopyOfTheCollection

	| observableUniverseState |
	observableUniverseState := ObservableUniverseState with: self twoPhysicalStatesCollection.

	self
		assert: observableUniverseState physicalStates
		equals: observableUniverseState physicalStates.

	self deny: observableUniverseState physicalStates == observableUniverseState physicalStates.
	

	