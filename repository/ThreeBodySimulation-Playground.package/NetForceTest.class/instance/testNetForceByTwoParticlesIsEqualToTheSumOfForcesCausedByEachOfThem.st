tests
testNetForceByTwoParticlesIsEqualToTheSumOfForcesCausedByEachOfThem

	| aParticle testResource aForceCausingParticle anotherForceCausingParticle forceCausingParticles expectedNetForce |
	testResource := PhysicsTestResource new.
	aParticle := testResource
		particleNamed: #ParticleA
		in: testResource nullPosition
		with: testResource oneKilogram.
	aForceCausingParticle := testResource
		particleNamed: #ParticleB
		in:	(testResource vectorWithAllComponentsInMeterAndAmount: 1)
		with: testResource twoKilograms.
	anotherForceCausingParticle := testResource
		particleNamed: #ParticleC
		in:	(testResource vectorWithAllComponentsInMeterAndAmount: 2)
		with: testResource twoKilograms.
	forceCausingParticles := Array with: aForceCausingParticle with: anotherForceCausingParticle.
	expectedNetForce := forceCausingParticles sum: [:forceCausingParticle | (Interaction over: aParticle causedBy: forceCausingParticle) result ].
	self
		assert: (NetForce over: aParticle causedByAll: forceCausingParticles) result
		equals: expectedNetForce