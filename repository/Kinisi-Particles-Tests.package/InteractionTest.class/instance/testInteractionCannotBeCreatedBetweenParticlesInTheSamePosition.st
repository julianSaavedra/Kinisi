tests
testInteractionCannotBeCreatedBetweenParticlesInTheSamePosition

	| particleInTheOrigin anotherParticleInTheOrigin |
	particleInTheOrigin := testResource	physicalStateForParticleInTheOriginNamed: #ParticleA.
	anotherParticleInTheOrigin := testResource physicalStateForParticleInTheOriginNamed: #ParticleB.

	self
		should: [ Interaction overParticleWith: particleInTheOrigin causedByParticleWith: anotherParticleInTheOrigin ]
		raise: PhysicsModelError