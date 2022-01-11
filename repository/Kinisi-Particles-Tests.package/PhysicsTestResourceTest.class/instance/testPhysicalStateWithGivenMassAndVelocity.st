tests
testPhysicalStateWithGivenMassAndVelocity

	| mass velocity physicalState |
	mass := testResource twoKilograms.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 1.
	physicalState := testResource physicalStateWith: mass movingAt: velocity.

	self assert: physicalState mass equals: mass.
	self assert: physicalState velocity equals: velocity