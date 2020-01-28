tests
testNetForceByTwoParticlesIsEqualToTheSumOfForcesCausedByEachOfThem

	| percivingParticle forceCausingParticles expectedNetForce netForce |
	percivingParticle := self particleA.
	forceCausingParticles := Array with: self particleB with: self particleC.
	netForce := NetForce
		overParticleWith: percivingParticle
		causedByParticlesWithAll: forceCausingParticles.

	expectedNetForce := self forceOver: percivingParticle causedByAll: forceCausingParticles.
	self
		assert: netForce result
		equals: expectedNetForce