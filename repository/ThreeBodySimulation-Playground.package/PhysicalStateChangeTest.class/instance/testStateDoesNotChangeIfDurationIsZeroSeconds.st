tests
testStateDoesNotChangeIfDurationIsZeroSeconds

	| originalState aForce stateChange |
	aForce := testResource oneNewtonInAllComponentsVector.
	originalState := PhysicalState
		withMass: testResource oneKilogram
		position: testResource oneMeterInAllComponentsVector
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 2)
		andAcceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 1).

	stateChange := PhysicalStateChange
		of: originalState
		during: testResource zeroSeconds
		perceiving: aForce.

	self assert: stateChange finalState equals: originalState