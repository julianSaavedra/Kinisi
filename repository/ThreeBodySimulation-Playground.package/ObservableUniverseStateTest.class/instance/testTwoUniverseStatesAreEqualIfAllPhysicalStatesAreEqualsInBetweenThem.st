tests
testTwoUniverseStatesAreEqualIfAllPhysicalStatesAreEqualsInBetweenThem

	| physicalStateCollection |
	physicalStateCollection := self twoPhysicalStatesCollection.

	self
		assert: (ObservableUniverseState with: physicalStateCollection)
		equals: (ObservableUniverseState with: physicalStateCollection copy)