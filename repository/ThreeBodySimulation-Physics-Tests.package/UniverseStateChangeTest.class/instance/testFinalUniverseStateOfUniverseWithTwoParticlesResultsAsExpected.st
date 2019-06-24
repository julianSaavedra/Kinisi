tests
testFinalUniverseStateOfUniverseWithTwoParticlesResultsAsExpected

	| originalState universeStateChange expectedState |
	originalState := ObservableUniverseState with: self originalPhysicalStates.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond.

	expectedState := ObservableUniverseState with: self expectedPhysicalStates.	
	self assert: universeStateChange finalState equals: expectedState