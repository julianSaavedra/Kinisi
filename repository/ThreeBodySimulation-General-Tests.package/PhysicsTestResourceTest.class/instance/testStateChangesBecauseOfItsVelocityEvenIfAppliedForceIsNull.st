tests
testStateChangesBecauseOfItsVelocityEvenIfAppliedForceIsNull

	| originalVelocity originalState stateChange expectedFinalState |
	originalVelocity := testResource velocityVectorWithAllComponentsWithAmount: 2.
	originalState := PhysicalState
		withMass: testResource oneKilogram
		position: testResource nullPosition
		velocity: originalVelocity
		andAcceleration: testResource nullAcceleration.
	expectedFinalState := PhysicalState
		withMass: testResource oneKilogram
		position: (testResource vectorWithAllComponentsInMeterAndAmount: 2)
		velocity: originalVelocity
		andAcceleration: testResource nullAcceleration.

	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: testResource nullForce.

	self assert: stateChange finalState equals: expectedFinalState