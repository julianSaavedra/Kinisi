tests
testNewPhysicalStateIsCreatedAfterStateChange

	| originalState aForce stateChange |
	aForce := testResource oneNewtonInAllComponentsVector.
	originalState := testResource oneKilogramInTheOriginPhysicalState..
	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: aForce.

	self deny: stateChange finalState == originalState