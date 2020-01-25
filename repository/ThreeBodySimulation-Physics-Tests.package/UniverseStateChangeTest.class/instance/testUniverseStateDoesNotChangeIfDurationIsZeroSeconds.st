tests
testUniverseStateDoesNotChangeIfDurationIsZeroSeconds

	| physicalStates originalState universeStateChange |
	physicalStates := Array with: testResource physicalStateWithNonNullVelocity.
	originalState := ObservableUniverseState withAll: physicalStates.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource zeroSeconds.

	self assert: universeStateChange finalState equals: originalState