tests
testNetForceIncludingTheSameParticleAsTheReceiverCanNotBeCreated

	| aParticle |
	aParticle := self particleA.

	self
		should: [ NetForce over: aParticle causedByAll: (Array with: aParticle) ]
		raise: PhysicsModelError