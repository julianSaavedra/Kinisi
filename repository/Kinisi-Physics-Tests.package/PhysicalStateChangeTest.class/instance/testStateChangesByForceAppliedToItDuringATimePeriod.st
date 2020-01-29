tests
testStateChangesByForceAppliedToItDuringATimePeriod

	| originalState aForce stateChange expectedFinalState |
	aForce := testResource oneNewtonInAllComponentsVector.
	originalState := testResource physicalStateWith: testResource oneKilogram.	
	expectedFinalState := ParticleState
		forParticleNamed: 'ParticleA' 
		withMass: testResource oneKilogram
		position: (testResource vectorWithAllComponentsInMeterAndAmount: 0.5)
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1)
		andAcceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 1).

	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: aForce.

	self assert: stateChange finalState equals: expectedFinalState