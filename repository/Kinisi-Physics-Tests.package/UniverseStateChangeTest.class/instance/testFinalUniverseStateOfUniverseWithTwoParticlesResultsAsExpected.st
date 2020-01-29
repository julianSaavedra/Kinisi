tests
testFinalUniverseStateOfUniverseWithTwoParticlesResultsAsExpected

	| originalState universeStateChange expectedState |
	originalState := ObservableUniverseState withAll: self originalPhysicalStates.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond.

	expectedState := ObservableUniverseState withAll: self expectedPhysicalStates.	
	self assert: universeStateChange finalState equals: expectedState