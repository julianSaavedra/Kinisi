test - constant force perpendicular to velocity
testUniverseWithSingleParticleWithForceCounterclockwisePerpendicularToVelocityActingOnItAndInitialVelocity

	| particle initialState nineNewtons changeEnvironment environmentBuilder change initialVelocity  mass |
	initialVelocity := testResource velocityVectorWithXComponentOnlyWithAmount: 10.
	mass := testResource kilogramWith: 3.
	particle := testResource physicalStateWith: mass movingAt: initialVelocity.
	self assert: particle position isZero.
	
	initialState := ObservableUniverseState with: particle.
	nineNewtons := testResource newtonWith: 9.
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addForceCounterclockwisePerpendicularToVelocityWith: nineNewtons for: particle.
	changeEnvironment := environmentBuilder environment.
	
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.

	self
		assertPositionOf: particle
		in: change finalState
		is: (testResource meterVectorWith: #(5 0.375 0))