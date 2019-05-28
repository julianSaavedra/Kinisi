tests
testParticleIsInTheSamePositionAsAnotherParticle

	| particleInTheOrigin anotherParticleInTheOrigin particleNotInTheOrigin |
	particleInTheOrigin := testResource particleAtOriginPositionNamed: #ParticleA.

	anotherParticleInTheOrigin := testResource particleAtOriginPositionNamed: #ParticleB.
	self assert: (particleInTheOrigin isInTheSamePositionAs: anotherParticleInTheOrigin).

	particleNotInTheOrigin := testResource particleNamed: #ParticleC in: testResource oneMeterInAllComponentsVector.
	self deny: (particleInTheOrigin isInTheSamePositionAs: particleNotInTheOrigin)