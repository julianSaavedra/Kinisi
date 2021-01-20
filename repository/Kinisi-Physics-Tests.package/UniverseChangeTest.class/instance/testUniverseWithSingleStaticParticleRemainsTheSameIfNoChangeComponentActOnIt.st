test
testUniverseWithSingleStaticParticleRemainsTheSameIfNoChangeComponentActOnIt

	| initialState change |
	initialState := ObservableUniverseState with: testResource physicalStateWithNullVelocity.
	change := UniverseChange from: initialState during: testResource oneSecond.

	self assert: change finalState equals: initialState