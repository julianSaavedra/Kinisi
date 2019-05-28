tests
testInteractionCannotBeCreatedBetweenPhysicalStateWithTheSamePosition

	| physicalStateInTheOrigin anotherPhysicalStateInTheOrigin |
	physicalStateInTheOrigin := testResource	physicalStateForParticleInTheOriginNamed: #ParticleA.
	anotherPhysicalStateInTheOrigin := testResource physicalStateForParticleInTheOriginNamed: #ParticleB.

	self
		should: [ Interaction overParticleWith: physicalStateInTheOrigin causedByParticleWith: anotherPhysicalStateInTheOrigin ]
		raise: PhysicsModelError