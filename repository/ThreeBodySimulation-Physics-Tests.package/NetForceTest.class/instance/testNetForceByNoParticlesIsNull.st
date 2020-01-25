tests
testNetForceByNoParticlesIsNull

	| netForce |
	netForce := NetForce
		overParticleWith: self particleA
		causedByParticlesWithAll: #().
	
	self
		assert: netForce result
		equals: testResource nullForce