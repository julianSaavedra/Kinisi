tests
testStateChangesBecauseOfItsVelocityEvenIfAppliedForceIsNull

	| originalVelocity originalState expectedPosition expectedFinalState stateChange |
	originalVelocity := testResource velocityVectorWithAllComponentsWithAmount: 2.
	originalState := testResource physicalStateWithVelocity: originalVelocity.
	expectedPosition := testResource vectorWithAllComponentsInMeterAndAmount: 2.
	expectedFinalState := testResource physicalStateIn: expectedPosition withVelocity: originalVelocity.
	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: testResource nullForce.

	self assert: stateChange finalState equals: expectedFinalState