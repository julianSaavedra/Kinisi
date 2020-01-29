tests
testNetForceCannotBeCreatedWithSameParticleAsTheReceiverAndTheCause

	| particle |
	particle := self particleA.

	self
		should: [ NetForce overParticleWith: particle causedByParticlesWithAll: (Array with: particle) ]
		raise: PhysicsModelError