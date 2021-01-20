test - constant acceleration
testUniverseWithSingleParticleWithConstantAccelerationAndInitialVelocity

	| particle originalState change minusTenMeterPerSecondVelocity changeEnvironment changeDescription |
	minusTenMeterPerSecondVelocity := testResource meterPerSecondVectorWith: #(-10 -10 -10).
	particle := testResource physicalStateWithVelocity: minusTenMeterPerSecondVelocity.
	self assert: particle position isZero.
	originalState := ObservableUniverseState with: particle.
	
	changeDescription := ChangeDescription empty.
	changeDescription
		addConstantAcceleration: self oneMeterPerSquareSecondAcceleration
		for: particle.
	changeEnvironment := ChangeEnvironment from: changeDescription.
	change := UniverseChange
		from: originalState
		with: changeEnvironment
		during: testResource oneSecond / 2.

	self
		assertPositionOf: particle
		in: change finalState
		is: (testResource meterVectorWith: #(-4.875 -4.875 -4.875))