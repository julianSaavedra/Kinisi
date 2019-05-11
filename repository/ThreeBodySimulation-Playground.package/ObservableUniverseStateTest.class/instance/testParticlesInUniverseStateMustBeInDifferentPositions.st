tests
testParticlesInUniverseStateMustBeInDifferentPositions

	| particleCollection particleAInTheOrigin particleBInTheOrigin |
	particleAInTheOrigin := testResource particleNamed: #ParticleA in: testResource nullPosition.
	particleBInTheOrigin := testResource particleNamed: #ParticleB in: testResource nullPosition.
	particleCollection := Array with: particleAInTheOrigin with: particleBInTheOrigin.

	self should: [ ObservableUniverseState with: particleCollection ] raise: PhysicsModelError
	

	