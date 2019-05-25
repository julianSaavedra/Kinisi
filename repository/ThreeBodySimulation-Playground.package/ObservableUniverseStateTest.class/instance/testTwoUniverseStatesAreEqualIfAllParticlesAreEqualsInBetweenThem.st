tests
testTwoUniverseStatesAreEqualIfAllParticlesAreEqualsInBetweenThem

	| particleA particleB particleCollection anotherParticleCollection |
	particleA := testResource particleAtOriginPositionNamed: #ParticleA.
	particleB := testResource particleNamed: #ParticleB in: testResource oneMeterInAllComponentsVector.
	particleCollection := Array with: particleA with: particleB.
	anotherParticleCollection := Array with: particleA copy with: particleB copy.

	self
		assert: (ObservableUniverseState with: particleCollection)
		equals: (ObservableUniverseState with: anotherParticleCollection)