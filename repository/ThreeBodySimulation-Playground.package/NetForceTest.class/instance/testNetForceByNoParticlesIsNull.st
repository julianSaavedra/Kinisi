tests
testNetForceByNoParticlesIsNull

	| netForce |
	netForce := NetForce over: self particleA causedByAll: #().
	
	self
		assert: netForce result
		equals: testResource nullForce