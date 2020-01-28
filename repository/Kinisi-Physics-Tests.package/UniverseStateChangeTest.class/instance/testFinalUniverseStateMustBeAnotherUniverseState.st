tests
testFinalUniverseStateMustBeAnotherUniverseState

	| originalState universeStateChange |
	originalState := ObservableUniverseState withAll: #().
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond. 

	self deny: universeStateChange finalState == originalState 