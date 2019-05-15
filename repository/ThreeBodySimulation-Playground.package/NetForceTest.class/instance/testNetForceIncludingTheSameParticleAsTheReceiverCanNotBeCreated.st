tests
testNetForceIncludingTheSameParticleAsTheReceiverCanNotBeCreated

	| aParticle testResource |
	testResource := PhysicsTestResource new.
	aParticle := testResource particleNamed: #ParticleA.

	self
		should: [ NetForce over: aParticle causedByAll: (Array with: aParticle) ]
		raise: PhysicsModelError