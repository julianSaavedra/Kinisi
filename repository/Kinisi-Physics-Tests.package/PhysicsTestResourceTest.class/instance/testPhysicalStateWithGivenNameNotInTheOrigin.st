tests
testPhysicalStateWithGivenNameNotInTheOrigin

	| physicalState |
	physicalState := testResource physicalStateForParticleNotInTheOriginNamed: 'ParticleForTest'.

	self assert: physicalState particleName equals: #'ParticleForTest'.
	self deny: physicalState position isZero