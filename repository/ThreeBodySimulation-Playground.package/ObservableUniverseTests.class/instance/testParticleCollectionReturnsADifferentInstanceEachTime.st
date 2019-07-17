tests
testParticleCollectionReturnsADifferentInstanceEachTime

	| universe |
	universe := ObservableUniverse from: self twoParticlesUniverseDraftWithNonNullNorDefaultValues.

	self deny: universe particles == universe particles