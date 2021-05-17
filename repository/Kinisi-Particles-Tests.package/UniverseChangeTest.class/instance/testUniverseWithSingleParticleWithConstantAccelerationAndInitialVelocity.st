test - constant acceleration
testUniverseWithSingleParticleWithConstantAccelerationAndInitialVelocity

	| particle initialState change minusTenMeterPerSecondVelocity changeEnvironment environmentBuilder |
	minusTenMeterPerSecondVelocity := testResource meterPerSecondVectorWith: #(-10 -10 -10).
	particle := testResource physicalStateWithVelocity: minusTenMeterPerSecondVelocity.
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
		during: testResource oneSecond / 2.

	self
		assertPositionOf: particle
		in: change finalState
		is: (testResource meterVectorWith: #(-4.875 -4.875 -4.875))