tests
testInteractionCannotBeCreatedBetweenPhysicalStatesForTheSameParticle

	| aPhysicalStateForParticleA anotherPhysicalStateForParticleA |
	aPhysicalStateForParticleA := testResource physicalStateForParticleInTheOriginNamed: #ParticleA.
	anotherPhysicalStateForParticleA := testResource physicalStateForParticleInTheOriginNamed: #ParticleA.

	self
		should: [
			Interaction
				overParticleWith: aPhysicalStateForParticleA
				causedByParticleWith: anotherPhysicalStateForParticleA ]
		raise: PhysicsModelError