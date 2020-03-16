tests
testCreationEmpty

	| universe |
	universe := ObservableUniverseState empty.

	self assert: universe particles isEmpty