test
testUniverseStateDoesNotChangeIfDurationIsZeroSeconds

	| originalState universeStateChange |
	originalState := ObservableUniverseState with: testResource physicalStateWithNonNullVelocity.
	universeStateChange := UniverseChange from: originalState during: testResource zeroSeconds.

	self assert: universeStateChange finalState equals: originalState