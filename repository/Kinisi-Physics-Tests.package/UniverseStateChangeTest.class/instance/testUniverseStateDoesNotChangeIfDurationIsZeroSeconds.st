tests
testUniverseStateDoesNotChangeIfDurationIsZeroSeconds

	| originalState universeStateChange |
	originalState := ObservableUniverseState with: testResource physicalStateWithNonNullVelocity.
	universeStateChange := UniverseStateChange
		from: originalState
		during: testResource zeroSeconds.

	self assert: universeStateChange finalState equals: originalState