tests
testHash

	| physicalStateCollection |
	physicalStateCollection := self twoPhysicalStatesCollection.

	self
		assert: (ObservableUniverseState with: physicalStateCollection) hash
		equals: (ObservableUniverseState with: physicalStateCollection copy) hash