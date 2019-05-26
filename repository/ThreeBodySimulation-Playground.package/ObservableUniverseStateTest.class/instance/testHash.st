tests
testHash

	| physicalStateForParticleA physicalStateForParticleB physicalStateCollection anotherPhysicalStateCollection |
	physicalStateForParticleA := testResource physicalStateForParticleInTheOriginNamed: 'ParticleA'.
	physicalStateForParticleB := testResource physicalStateForParticleNamed: 'ParticleB' in: testResource oneMeterInAllComponentsVector.
	physicalStateCollection := Array with: physicalStateForParticleA with: physicalStateForParticleB.
	anotherPhysicalStateCollection := Array with: physicalStateForParticleA copy with: physicalStateForParticleB copy.

	self
		assert: (ObservableUniverseState with: physicalStateCollection) hash
		equals: (ObservableUniverseState with: anotherPhysicalStateCollection) hash