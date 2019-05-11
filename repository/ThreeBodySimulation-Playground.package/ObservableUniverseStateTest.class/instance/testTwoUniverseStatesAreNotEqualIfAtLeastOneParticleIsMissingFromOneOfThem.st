tests
testTwoUniverseStatesAreNotEqualIfAtLeastOneParticleIsMissingFromOneOfThem

	| particleA particleB |
	particleA := testResource particleAtOriginPositionNamed: #ParticleA.
	particleB := testResource particleNamed: #ParticleB in: testResource oneMeterInAllComponentsVector.

	self
		deny: (ObservableUniverseState with: (Array with: particleA with: particleB))
		equals: (ObservableUniverseState with: (Array with: particleA))