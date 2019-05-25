tests
testParticleWithGivenNamePositionAndMass

	| position mass particle |
	position := testResource oneMeterInAllComponentsVector.
	mass := testResource oneKilogram.
	
	particle := testResource particleNamed: #ParticleA in: position with: mass.

	self assert: particle name equals: #ParticleA.
	self assert: particle position equals: position.
	self assert: particle mass equals: mass