tests
testUniverseStateChangeIfItHasOnePhysicalStateWithNonNullVelocity

	| originalState universeStateChange |
	originalState := ObservableUniverseState with: testResource physicalStateWithNonNullVelocity.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource oneSecond.

	self deny: universeStateChange finalState equals: originalState