tests
testStateChangesByForceAppliedToItDuringATimePeriod

	| originalState aForce stateChange expectedFinalState |
	aForce := testResource oneNewtonInAllComponentsVector.
	originalState := PhysicalState
		withMass: testResource oneKilogram
		position: testResource nullPosition
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.
	expectedFinalState := PhysicalState
		withMass: testResource oneKilogram
		position: (testResource vectorWithAllComponentsInMeterAndAmount: 0.5)
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1)
		andAcceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 1).

	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: aForce.

	self assert: stateChange finalState equals: expectedFinalState