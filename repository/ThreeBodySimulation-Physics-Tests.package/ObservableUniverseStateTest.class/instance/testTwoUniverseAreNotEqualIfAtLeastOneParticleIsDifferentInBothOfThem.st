tests
testTwoUniverseAreNotEqualIfAtLeastOneParticleIsDifferentInBothOfThem

	| particleInTheOrigin notAtOriginParticle |
	particleInTheOrigin := Array with: self particleAInTheOrigin.
	notAtOriginParticle := Array with: self particleANotInTheOrigin.

	self
		deny: (ObservableUniverseState withAll: particleInTheOrigin)
		equals: (ObservableUniverseState withAll: notAtOriginParticle)