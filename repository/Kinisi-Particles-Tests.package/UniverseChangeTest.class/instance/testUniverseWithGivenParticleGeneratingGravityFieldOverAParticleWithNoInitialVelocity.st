test - gravitational
testUniverseWithGivenParticleGeneratingGravityFieldOverAParticleWithNoInitialVelocity

	| particle initialState change changeEnvironment reallyBigMass bigMassPosition fieldGeneratingParticle environmentBuilder |
	particle := testResource physicalStateWithNullVelocity.
	self assert: particle position isZero.
	reallyBigMass := testResource oneKilogram * 6e20.
	bigMassPosition := testResource meterVectorWith: #(1000 500 0).
	fieldGeneratingParticle := testResource
		physicalStateForParticleNamed: 'FieldCausingParticle'
		with: reallyBigMass
		in: bigMassPosition.
	initialState := ObservableUniverseState withAll: {particle. fieldGeneratingParticle}.
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addGravitationalFieldCausedBy: fieldGeneratingParticle.
	changeEnvironment := environmentBuilder environment.
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.

	self
		assertPositionOf: particle
		in: change finalState
		isCloseTo: (testResource meterVectorWith: #(3581.8 1790.9 0))