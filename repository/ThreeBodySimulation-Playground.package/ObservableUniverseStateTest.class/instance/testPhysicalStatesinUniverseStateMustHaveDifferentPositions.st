tests
testPhysicalStatesinUniverseStateMustHaveDifferentPositions

	| physicalStateCollection physicalStateInTheOrigin anotherPhysicalStateInTheOrigin |
	physicalStateInTheOrigin := testResource physicalStateForParticleInTheOriginNamed: 'ParticleA'.
	anotherPhysicalStateInTheOrigin := testResource physicalStateForParticleInTheOriginNamed: 'ParticleB'.
	physicalStateCollection := Array with: physicalStateInTheOrigin with: anotherPhysicalStateInTheOrigin.

	self should: [ ObservableUniverseState with: physicalStateCollection ] raise: PhysicsModelError
	

	