tests
testTwoUniverseStatesAreNotEqualIfAtLeastOnePhysicalStateIsMissingFromOneOfThem

	| twoPhysicalStates |
	twoPhysicalStates := self twoPhysicalStatesCollection.
	
	self
		deny: (ObservableUniverseState with: twoPhysicalStates)
		equals: (ObservableUniverseState with: twoPhysicalStates allButLast)