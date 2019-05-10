tests
testStateDoesNotChangeIfForceAccelarationAndVelocityAreNull

	| originalState stateChange |
	originalState := PhysicalState
		withMass: testResource oneKilogram
		position: testResource nullPosition
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: testResource nullForce.

	self assert: stateChange finalState equals: originalState