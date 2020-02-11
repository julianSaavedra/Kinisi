tests
testFinalUniverseStateIsEqualToTheOriginalStateIfItHasNoPhysicalStates

	| originalState universeStateChange |
	originalState := ObservableUniverseState empty.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond. 

	self assert: universeStateChange finalState equals: originalState 
