test - gravitational
testUniverseWithSingleParticleWithGravitationalForceGeneratedByAnotherBodyActingOnItAndNoInitialVelocity

	| particle initialState change changeEnvironment reallyBigMass bigMassPosition finalState targetParticle expectedPosition fieldGeneratingParticle environmentBuilder |
	particle := testResource physicalStateWithNullVelocity.
	self assert: particle position isZero.
	
	reallyBigMass := testResource oneKilogram * 6e20.
	bigMassPosition := testResource meterVectorWith: #(1000 500 0).
	fieldGeneratingParticle:= testResource physicalStateForParticleNamed: 'FieldCausingParticle' with: reallyBigMass in: bigMassPosition.

	initialState := ObservableUniverseState withAll: {particle. fieldGeneratingParticle}.
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addGravitationalFieldCausedBy: fieldGeneratingParticle.
	changeEnvironment := environmentBuilder environment.
	
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource oneSecond / 2.

	finalState := change finalState.
	targetParticle := particle.
	expectedPosition := testResource meterVectorWith: #(3581.8 1790.9 0).
	finalState particles
		detect: [:aParticle | aParticle particleName = targetParticle particleName ]
		ifFound: [:aParticle |
			self assert: (aParticle position x closeTo: expectedPosition x).
			self assert: (aParticle position y closeTo: expectedPosition y).
			self assert: (aParticle position z closeTo: expectedPosition z)  ]
		ifNone: [ self fail ]