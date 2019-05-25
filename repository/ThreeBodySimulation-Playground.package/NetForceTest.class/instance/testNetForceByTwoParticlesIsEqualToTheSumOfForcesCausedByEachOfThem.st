tests
testNetForceByTwoParticlesIsEqualToTheSumOfForcesCausedByEachOfThem

	| aParticle forceCausingParticles expectedNetForce |
	aParticle := self particleA.
	forceCausingParticles := Array with: self particleB with: self particleC.

	expectedNetForce := self forceOver: aParticle causedByAll: forceCausingParticles.
	self
		assert: (NetForce over: aParticle causedByAll: forceCausingParticles) result
		equals: expectedNetForce