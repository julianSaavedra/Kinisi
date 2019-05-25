tests
testFinalUniverseStateMustBeAnotherUniverseState

	| originalState universeStateChange |
	originalState := ObservableUniverseState with: #().
	universeStateChange := UniverseStateChange from: originalState during: testResource oneSecond. 

	self deny: universeStateChange finalState == originalState 