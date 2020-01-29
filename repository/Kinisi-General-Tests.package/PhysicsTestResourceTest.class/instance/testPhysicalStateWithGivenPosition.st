tests
testPhysicalStateWithGivenPosition

	| acceleration physicalState |
	acceleration := testResource accelerationVectorWithAllComponentsWithAmount: 1.
	physicalState := testResource physicalStateWithAcceleration: acceleration.

	self assert: physicalState acceleration equals: acceleration