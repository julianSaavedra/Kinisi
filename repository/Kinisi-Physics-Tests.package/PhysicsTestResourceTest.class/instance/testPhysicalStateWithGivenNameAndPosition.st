tests
testPhysicalStateWithGivenNameAndPosition

	| physicalState position |
	position := testResource oneMeterInAllComponentsVector.
	physicalState := testResource physicalStateForParticleNamed: 'ParticleForTest' in: position.

	self assert: physicalState particleName equals: #'ParticleForTest'.
	self assert: physicalState position equals: position