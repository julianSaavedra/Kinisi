test - constant acceleration
testUniverseWithSingleParticleWithConstantAccelerationAndNoInitialVelocity

	| particle initialState change changeEnvironment environmentBuilder |
	particle := testResource physicalStateWithNullVelocity.
	self assert: particle position isZero.
	initialState := ObservableUniverseState with: particle.
	
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder
		addConstantAcceleration: self oneMeterPerSquareSecondAcceleration
		for: particle.
	changeEnvironment := environmentBuilder environment.
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.

	self
		assertPositionOf: particle
		in: change finalState
		is: (testResource meterVectorWith: #(0.125 0.125 0.125))