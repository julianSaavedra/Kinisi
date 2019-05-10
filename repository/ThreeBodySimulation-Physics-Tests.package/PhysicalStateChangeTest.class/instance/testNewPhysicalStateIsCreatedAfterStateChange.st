tests
testNewPhysicalStateIsCreatedAfterStateChange

	| originalState aForce stateChange |
	aForce := testResource oneNewtonInAllComponentsVector.
	originalState := PhysicalState
		withMass: testResource oneKilogram
		position: testResource oneMeterInAllComponentsVector
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: aForce.

	self deny: stateChange finalState == originalState