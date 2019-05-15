tests
testNetForceByOneParticleIsEqualAsTheForceCausedByThatParticle

	| aParticle netForce testResource anotherParticle expectedNetForce |
	testResource := PhysicsTestResource new.
	aParticle := testResource
		particleNamed: #ParticleA
		in: testResource nullPosition
		with: testResource oneKilogram.
	anotherParticle := testResource
		particleNamed: #ParticleB
		in:	(testResource vectorWithAllComponentsInMeterAndAmount: 1 / 3 sqrt)
		with: testResource twoKilograms.
	netForce := NetForce over: aParticle causedByAll: (Array with: anotherParticle).
	expectedNetForce := (Interaction over: aParticle causedBy: anotherParticle) result.
	self
		assert: netForce result
		equals: expectedNetForce