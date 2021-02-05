test - constant acceleration
testUniverseWithSingleParticleWithConstantAccelerationAndNoInitialVelocity

	| particle initialState change changeEnvironment changeDescription |
	particle := testResource physicalStateWithNullVelocity.
	self assert: particle position isZero.
	initialState := ObservableUniverseState with: particle.
	
	changeDescription := ChangeDescription empty.
	changeDescription addConstantAcceleration: self oneMeterPerSquareSecondAcceleration for: particle.
	changeEnvironment := ChangeEnvironment from: changeDescription.
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource oneSecond / 2.

	self
		assertPositionOf: particle
		in: change finalState
		is: (testResource meterVectorWith: #(0.125 0.125 0.125))