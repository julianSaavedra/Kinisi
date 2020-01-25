tests
testCreationFromParticles

	| universe |
	universe := ObservableUniverseState withAll: self twoParticles.

	self assert: universe particles size equals: 2

	

	