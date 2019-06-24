tests
testUniverseStateChangeIfItHasOnePhysicalStateWithNonNullVelocity

	| physicalStates originalState universeStateChange |
	physicalStates := Array with: testResource physicalStateWithNonNullVelocity.
	originalState := ObservableUniverseState with: physicalStates.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond.

	self deny: universeStateChange finalState equals: originalState