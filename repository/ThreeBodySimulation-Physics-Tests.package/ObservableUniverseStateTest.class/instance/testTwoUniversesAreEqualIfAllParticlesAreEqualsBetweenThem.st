tests
testTwoUniversesAreEqualIfAllParticlesAreEqualsBetweenThem

	| particles |
	particles := self twoParticles.

	self
		assert: (ObservableUniverseState withAll: particles)
		equals: (ObservableUniverseState withAll: particles copy)