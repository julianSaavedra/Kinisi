tests
testTwoUniverseStatesAreNotEqualIfAtLeastOneParticleIsDifferentInBothOfThem

	| atOriginPositionParticleA notAtOriginPositionParticleA |
	atOriginPositionParticleA := testResource particleAtOriginPositionNamed: #ParticleA.
	notAtOriginPositionParticleA := testResource particleNamed: #ParticleA in: testResource oneMeterInAllComponentsVector.

	self
		deny: (ObservableUniverseState with: (Array with: atOriginPositionParticleA))
		equals: (ObservableUniverseState with: (Array with: notAtOriginPositionParticleA))