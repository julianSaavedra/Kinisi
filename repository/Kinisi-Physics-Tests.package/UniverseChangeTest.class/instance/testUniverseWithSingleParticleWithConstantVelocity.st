test - constant velocity
testUniverseWithSingleParticleWithConstantVelocity

	| initialState change particle |
	particle := testResource physicalStateWithVelocity: self oneMeterPerSecondVelocity.
	self assert: particle position isZero.

	initialState := ObservableUniverseState with: particle.
	change := UniverseChange
		from: initialState
		during: testResource oneSecond.

	self
		assertPositionOf: particle
		in: change finalState
		is: testResource oneMeterInAllComponentsVector