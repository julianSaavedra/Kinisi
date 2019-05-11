tests
testNetForceByNoParticlesIsNull

	| aParticle netForce testResource |
	testResource := PhysicsTestResource new.
	aParticle := testResource particleNamed: #ParticleA.
	netForce := NetForce over: aParticle causedByAll: #().
	
	self
		assert: netForce result
		equals: testResource nullForce