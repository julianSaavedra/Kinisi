tests
testAccessingParticlesInUniverseMustReturnADifferentCopyOfTheCollection

	| universe |
	universe := ObservableUniverseState withAll: self twoParticles.

	self
		assert: universe particles
		equals: universe particles.

	self deny: universe particles == universe particles.
	

	