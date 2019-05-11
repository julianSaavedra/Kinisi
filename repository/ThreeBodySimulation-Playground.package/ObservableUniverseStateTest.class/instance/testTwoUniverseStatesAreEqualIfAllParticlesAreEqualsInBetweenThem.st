tests
testTwoUniverseStatesAreEqualIfAllParticlesAreEqualsInBetweenThem

	| particleA particleB particleCollection |
	particleA := testResource particleAtOriginPositionNamed: #ParticleA.
	particleB := testResource particleNamed: #ParticleB in: testResource oneMeterInAllComponentsVector.
	particleCollection := Array with: particleA with: particleB.

	self
		assert: (ObservableUniverseState with: particleCollection)
		equals: (ObservableUniverseState with: particleCollection)