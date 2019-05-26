tests
testFinalUniverseStateOfUniverseWithTwoParticlesResultsAsExpected

	| originalState universeStateChange expectedState |
	originalState := ObservableUniverseState with: self originalParticles.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond.
	expectedState := ObservableUniverseState with: self expectedParticles.
	
	self assert: universeStateChange finalState equals: expectedState