test
testFinalUniverseStateMustBeAnotherUniverseState

	| originalState change |
	originalState := ObservableUniverseState empty.
	change := UniverseChange from: originalState during: testResource oneSecond. 

	self deny: change finalState identicalTo: originalState 