tests
testPhysicalStateWithGivenNamePositionAndVelocity

	| physicalState position velocity |
	position := testResource oneMeterInAllComponentsVector.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 10.
	physicalState := testResource physicalStateForParticleNamed: 'ParticleForTest' in: position with: velocity.

	self assert: physicalState particleName equals: #'ParticleForTest'.
	self assert: physicalState position equals: position.
	self assert: physicalState velocity equals: velocity