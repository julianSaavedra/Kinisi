tests
testHash

	| particles |
	particles := self twoParticles.

	self
		assert: (ObservableUniverseState withAll: particles) hash
		equals: (ObservableUniverseState withAll: particles copy) hash