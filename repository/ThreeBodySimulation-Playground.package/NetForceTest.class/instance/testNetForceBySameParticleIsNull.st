tests
testNetForceBySameParticleIsNull

	| aParticle netForce testResource |
	testResource := PhysicsTestResource new.
	aParticle := testResource particleNamed: #ParticleA.
	netForce := NetForce over: aParticle causedByAll: (Array with: aParticle).
	
	self
		assert: netForce result
		equals: testResource nullForce