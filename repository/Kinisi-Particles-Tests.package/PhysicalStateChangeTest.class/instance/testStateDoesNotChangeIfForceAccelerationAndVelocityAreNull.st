tests
testStateDoesNotChangeIfForceAccelerationAndVelocityAreNull

	| originalState stateChange |
	originalState := testResource physicalStateWith: testResource oneKilogram.
	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: testResource nullForce.

	self assert: stateChange finalState equals: originalState