tests
testParticlesInUniverseStateMustBeInDifferentPositions

	| particleCollection particleAInTheOrigin particleBInTheOrigin |
	particleAInTheOrigin := testResource particleAtOriginPositionNamed: #ParticleA.
	particleBInTheOrigin := testResource particleAtOriginPositionNamed: #ParticleB.
	particleCollection := Array with: particleAInTheOrigin with: particleBInTheOrigin.

	self should: [ ObservableUniverseState with: particleCollection ] raise: PhysicsModelError
	

	