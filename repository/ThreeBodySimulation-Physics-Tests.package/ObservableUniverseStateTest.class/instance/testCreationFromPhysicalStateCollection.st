tests
testCreationFromPhysicalStateCollection

	| observableUniverseState |
	observableUniverseState := ObservableUniverseState with: self twoPhysicalStatesCollection.

	self assert: observableUniverseState physicalStates size equals: 2

	

	