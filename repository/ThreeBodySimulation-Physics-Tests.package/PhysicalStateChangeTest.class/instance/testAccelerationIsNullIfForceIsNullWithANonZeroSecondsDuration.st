tests
testAccelerationIsNullIfForceIsNullWithANonZeroSecondsDuration

	| nonNullAcceleration originalState stateChange |
	nonNullAcceleration := testResource accelerationVectorWithAllComponentsWithAmount: 1.
	originalState := testResource physicalStateWithAcceleration: nonNullAcceleration.
	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: testResource nullForce.

	self
		assert: stateChange finalState acceleration
		equals: testResource nullAcceleration