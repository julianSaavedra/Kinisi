tests
testFinalUniverseStateMustBeAnotherUniverseState

	| originalState universeStateChange |
	originalState := ObservableUniverseState empty.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond. 

	self deny: universeStateChange finalState == originalState 