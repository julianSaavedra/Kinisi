tests
testStateDoesNotChangeIfDurationIsZeroSeconds

	| originalState aForce stateChange |
	aForce := testResource oneNewtonInAllComponentsVector.
	originalState := testResource oneKilogramInTheOriginPhysicalState.
	stateChange := PhysicalStateChange
		of: originalState
		during: testResource zeroSeconds
		perceiving: aForce.

	self assert: stateChange finalState equals: originalState