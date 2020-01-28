tests
testTwoUniversesAreNotEqualIfAtLeastOneParticleIsMissingFromOneOfThem

	| particles |
	particles := self twoParticles.
	
	self
		deny: (ObservableUniverseState withAll: particles)
		equals: (ObservableUniverseState withAll: particles allButLast)