tests
testNetForceByOneParticleIsEqualAsTheForceCausedByThatParticle

	| percivingParticle forceCausingParticle netForce expectedNetForce |
	percivingParticle := self particleA.
	forceCausingParticle := self particleB.
	netForce := NetForce
		overParticleWith: percivingParticle
		causedByParticlesWithAll: (Array with: forceCausingParticle).

	expectedNetForce := self forceOver: percivingParticle causedBy: forceCausingParticle.
	self
		assert: netForce result
		equals: expectedNetForce