tests
testTwoUniverseStatesAreNotEqualIfAtLeastOnePhysicalStateIsMissingFromOneOfThem

	| physicalStateForParticleA physicalStateForParticleB |
	physicalStateForParticleA := testResource physicalStateForParticleInTheOriginNamed: #ParticleA.
	physicalStateForParticleB := testResource physicalStateForParticleNamed: #ParticleB in: testResource oneMeterInAllComponentsVector.

	self
		deny: (ObservableUniverseState with: (Array with: physicalStateForParticleA with: physicalStateForParticleB))
		equals: (ObservableUniverseState with: (Array with: physicalStateForParticleA copy))