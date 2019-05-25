tests
testEqual

	| aParticle anotherParticle |
	aParticle := testResource particleAtOriginPositionNamed: #ParticleA.
	anotherParticle := testResource particleAtOriginPositionNamed: #ParticleA.

	self assert: (aParticle = anotherParticle)