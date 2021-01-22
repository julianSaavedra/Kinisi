test
testUniverseWithThreeStaticParticlesRemainsTheSameIfNoChangeComponentActOnThem

	| initialState change particleA particleB particleC |
	particleA :=  testResource physicalStateForParticleInTheOriginNamed: #ParticleA.
	self assert: particleA velocity isZero.
	particleB := testResource physicalStateForParticleNamed: #ParticleB in: (testResource vectorWithXOnlyWithMeters: 1).
	self assert: particleB velocity isZero.
	particleC := testResource physicalStateForParticleNamed: #ParticleC in: (testResource vectorWithYOnlyWithMeters: 1).
	self assert: particleC velocity isZero.
	initialState := ObservableUniverseState withAll: {particleA. particleB. particleC}.
	change := UniverseChange from: initialState during: testResource oneSecond.

	self assert: change finalState equals: initialState