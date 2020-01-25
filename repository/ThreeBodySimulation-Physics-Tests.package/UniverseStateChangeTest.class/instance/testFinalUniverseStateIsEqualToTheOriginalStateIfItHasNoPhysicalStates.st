tests
testFinalUniverseStateIsEqualToTheOriginalStateIfItHasNoPhysicalStates

	| originalState universeStateChange |
	originalState := ObservableUniverseState withAll: #().
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond. 

	self assert: universeStateChange finalState equals: originalState 
