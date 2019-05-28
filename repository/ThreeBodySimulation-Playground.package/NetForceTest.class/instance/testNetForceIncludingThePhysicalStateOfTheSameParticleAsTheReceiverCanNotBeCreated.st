tests
testNetForceIncludingThePhysicalStateOfTheSameParticleAsTheReceiverCanNotBeCreated

	| physicalState |
	physicalState := self physicalStateForParticleA.

	self
		should: [ NetForce overParticleWith: physicalState causedByParticlesWithAll: (Array with: physicalState) ]
		raise: PhysicsModelError