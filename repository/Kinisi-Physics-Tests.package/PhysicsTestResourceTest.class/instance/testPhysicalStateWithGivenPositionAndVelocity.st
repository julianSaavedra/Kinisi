tests
testPhysicalStateWithGivenPositionAndVelocity

	| physicalState position velocity |
	position := testResource oneMeterInAllComponentsVector.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 1.
	physicalState := testResource physicalStateIn: position withVelocity: velocity.

	self assert: physicalState position equals: position.
	self assert: physicalState velocity equals: velocity