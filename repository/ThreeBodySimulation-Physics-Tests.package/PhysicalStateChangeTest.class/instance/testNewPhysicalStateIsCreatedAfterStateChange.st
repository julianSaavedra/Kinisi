tests
testNewPhysicalStateIsCreatedAfterStateChange

	| originalState force stateChange |
	force := testResource oneNewtonInAllComponentsVector.
	originalState := testResource oneKilogramInTheOriginPhysicalState.
	stateChange := PhysicalStateChange
		of: originalState
		during: testResource oneSecond
		perceiving: force.

	self deny: stateChange finalState == originalState