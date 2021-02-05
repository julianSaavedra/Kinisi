tests
testTwoUniverseAreNotEqualIfAtLeastOneParticleIsDifferentInBothOfThem

	self
		deny: (ObservableUniverseState with: self particleAInTheOrigin)
		equals: (ObservableUniverseState with: self particleANotInTheOrigin)