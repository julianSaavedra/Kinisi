tests
testParticleWithGivenNameAndAtTheOriginPosition

	| particle |
	
	particle := testResource particleAtOriginPositionNamed: #ParticleA.

	self assert: particle name equals: #ParticleA.
	self assert: particle position equals: testResource nullPosition