tests
testPhysicalStateWithGivenVelocity

	| velocity physicalState |
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 1.
	physicalState := testResource physicalStateWithVelocity: velocity.

	self assert: physicalState velocity equals: velocity