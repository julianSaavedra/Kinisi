tests
testVelocityDoesNotChangeIfForceIsNullWithANonZeroSecondsDuration

	| originalVelocity originalState stateChange |
	originalVelocity := testResource velocityVectorWithAllComponentsWithAmount: 2.
	originalState := testResource physicalStateWithVelocity: originalVelocity.
	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: testResource nullForce.

	self
		assert: stateChange finalState velocity
		equals: originalVelocity