test - constant force
testUniverseWithSingleParticleWithConstantForceActingOnItAndNoInitialVelocity

	| particle initialState change changeEnvironment oneNewtonForce changeDescription |
	particle := testResource physicalStateWithNullVelocity.
	self assert: particle position isZero.
	
	oneNewtonForce := testResource oneNewtonInAllComponentsVector.
	changeDescription := ChangeDescription empty.
	changeDescription addConstantForce: oneNewtonForce for: particle.
	changeEnvironment := ChangeEnvironment from: changeDescription.
	initialState := ObservableUniverseState with: particle.
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource oneSecond / 2.

	self
		assertPositionOf: particle
		in: change finalState
		is: (testResource meterVectorWith: #(0.125 0.125 0.125))