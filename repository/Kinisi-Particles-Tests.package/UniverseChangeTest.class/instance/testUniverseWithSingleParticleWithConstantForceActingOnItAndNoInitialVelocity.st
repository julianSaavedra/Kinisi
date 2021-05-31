test - constant force
testUniverseWithSingleParticleWithConstantForceActingOnItAndNoInitialVelocity

	| particle initialState change changeEnvironment oneNewtonForce environmentBuilder |
	particle := testResource physicalStateWithNullVelocity.
	self assert: particle position isZero.
	
	initialState := ObservableUniverseState with: particle.
	oneNewtonForce := testResource oneNewtonInAllComponentsVector.
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addConstantForce: oneNewtonForce for: particle.
	changeEnvironment := environmentBuilder environment.
	
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.

	self
		assertPositionOf: particle
		in: change finalState
		is: (testResource meterVectorWith: #(0.125 0.125 0.125))