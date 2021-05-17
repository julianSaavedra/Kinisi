tests
testPhysicalStateWithGivenNameA

	| physicalState |
	physicalState := testResource physicalStateForParticleNamed: 'ParticleForTest'.

	self assert: physicalState particleName equals: #'ParticleForTest'