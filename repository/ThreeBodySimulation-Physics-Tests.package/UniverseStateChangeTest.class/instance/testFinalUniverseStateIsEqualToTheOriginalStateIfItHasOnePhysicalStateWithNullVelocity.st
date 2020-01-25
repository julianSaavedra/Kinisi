tests
testFinalUniverseStateIsEqualToTheOriginalStateIfItHasOnePhysicalStateWithNullVelocity

	| physicalStates originalState universeStateChange |
	physicalStates := Array with: testResource physicalStateWithNullVelocity.
	originalState := ObservableUniverseState withAll: physicalStates.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond.

	self assert: universeStateChange finalState equals: originalState