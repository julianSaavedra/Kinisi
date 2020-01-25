tests
testInteractionCannotBeCreatedBetweenPhysicalStatesForTheSameParticle

	| particleA particleAWithOtherPosition |
	particleA := testResource physicalStateForParticleInTheOriginNamed: #ParticleA.
	particleAWithOtherPosition := testResource physicalStateForParticleInTheOriginNamed: #ParticleA.

	self
		should: [
			Interaction
				overParticleWith: particleA
				causedByParticleWith: particleAWithOtherPosition ]
		raise: PhysicsModelError