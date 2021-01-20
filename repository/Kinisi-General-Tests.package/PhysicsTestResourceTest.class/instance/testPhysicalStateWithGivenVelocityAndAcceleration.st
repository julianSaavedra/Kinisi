tests
testPhysicalStateWithGivenVelocityAndAcceleration

	| velocity physicalState acceleration |
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 1.
	acceleration := testResource accelerationVectorWithAllComponentsWithAmount: 3.
	physicalState := testResource physicalStateWithVelocity: velocity andAcceleration: acceleration.

	self assert: physicalState velocity equals: velocity.
	self assert: physicalState acceleration equals: acceleration