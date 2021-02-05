tests
testPhysicalStateWithGivenNameInTheOrigin

	| physicalState |
	physicalState := testResource physicalStateForParticleInTheOriginNamed: 'ParticleForTest'.

	self assert: physicalState particleName equals: #'ParticleForTest'.
	self assert: physicalState position equals: testResource nullPosition