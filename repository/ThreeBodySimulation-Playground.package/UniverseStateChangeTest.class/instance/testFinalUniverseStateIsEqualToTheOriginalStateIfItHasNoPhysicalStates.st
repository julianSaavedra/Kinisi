tests
testFinalUniverseStateIsEqualToTheOriginalStateIfItHasNoPhysicalStates

	| originalState universeStateChange |
	originalState := ObservableUniverseState with: #().
	universeStateChange := UniverseStateChange from: originalState during: testResource oneSecond. 

	self assert: universeStateChange finalState equals: originalState 
