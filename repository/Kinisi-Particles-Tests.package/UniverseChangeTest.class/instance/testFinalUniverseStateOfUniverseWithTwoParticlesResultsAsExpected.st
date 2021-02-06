test - previous - gravitational
testFinalUniverseStateOfUniverseWithTwoParticlesResultsAsExpected

	| originalState universeStateChange expectedState |
	originalState := ObservableUniverseState withAll: self originalPhysicalStates.
	universeStateChange := UniverseGravitationalChange
		from: originalState
		during: testResource oneSecond.

	expectedState := ObservableUniverseState withAll: self expectedPhysicalStates.	
	self assert: universeStateChange finalState equals: expectedState