tests
testNetForceByOneParticleIsEqualAsTheForceCausedByThatParticle

	| aParticle netForce anotherParticle expectedNetForce |
	aParticle := self particleA.
	anotherParticle := self particleB.
	netForce := NetForce
		over: aParticle
		causedByAll: (Array with: anotherParticle).

	expectedNetForce := self forceOver: aParticle causedBy: anotherParticle.
	self assert: netForce result equals: expectedNetForce