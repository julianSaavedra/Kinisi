tests
testParticlesInUniverseStateMustHaveUniqueNamesInIt

	| particleCollection particleNameAInTheOrigin particleANotInTheOrigin |
	particleNameAInTheOrigin := testResource particleNamed: #ParticleA in: testResource nullPosition.
	particleANotInTheOrigin := testResource particleNamed: #ParticleA in: testResource oneMeterInAllComponentsVector.
	particleCollection := Array with: particleNameAInTheOrigin with: particleANotInTheOrigin.

	self should: [ ObservableUniverseState with: particleCollection ] raise: PhysicsModelError
	

	