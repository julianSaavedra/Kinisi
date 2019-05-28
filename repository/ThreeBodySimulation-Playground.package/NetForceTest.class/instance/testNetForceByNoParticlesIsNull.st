tests
testNetForceByNoParticlesIsNull

	| netForce |
	netForce := NetForce
		overParticleWith: self physicalStateForParticleA
		causedByParticlesWithAll: #().
	
	self
		assert: netForce result
		equals: testResource nullForce