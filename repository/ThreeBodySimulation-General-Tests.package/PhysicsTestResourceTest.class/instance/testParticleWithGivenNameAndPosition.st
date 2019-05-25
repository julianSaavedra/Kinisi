tests
testParticleWithGivenNameAndPosition

	| position particle |
	position := testResource oneMeterInAllComponentsVector.
	
	particle := testResource particleNamed: #ParticleA in: position.

	self assert: particle name equals: #ParticleA.
	self assert: particle position equals: position