tests
testPhysicalStatesInUniverseStateMustBeOfDifferentParticlesEach

	| physicalStateForParticleA anotherPhysicalStateForParticleA physicalStateCollection |
	physicalStateForParticleA := testResource physicalStateForParticleInTheOriginNamed: 'ParticleA'.
	anotherPhysicalStateForParticleA := testResource physicalStateForParticleNamed: 'ParticleA' in: testResource oneMeterInAllComponentsVector.
	physicalStateCollection := Array with: physicalStateForParticleA with: anotherPhysicalStateForParticleA.

	self should: [ ObservableUniverseState with: physicalStateCollection ] raise: PhysicsModelError
	

	