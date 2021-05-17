test - constant acceleration
testUniverseWithThreeParticlesDifferentConstantAccelerationsAndDifferentInitialVelocities

	| particleA initialState change finalState particleB particleC finalPositionA finalPositionB finalPositionC particleAAcceleration particleCAcceleration changeEnvironment environmentBuilder |
	particleA := testResource physicalStateForParticleInTheOriginNamed: #ParticleA.
	self assert: particleA velocity isZero.
	particleB := testResource
		physicalStateForParticleNamed: #ParticleB
		in: (testResource meterVectorWith: #(1 1 1))
		with: (testResource meterPerSecondVectorWith: #(1 0 0)).
	particleC := testResource
		physicalStateForParticleNamed: #ParticleC
		in: (testResource meterVectorWith: #(-2 -2 -2))
		with: (testResource meterPerSecondVectorWith: #(-1 -1 -1)).
	initialState := ObservableUniverseState withAll: {particleA. particleB. particleC}.	
	
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	particleAAcceleration := self oneMeterPerSquareSecondAcceleration.
	environmentBuilder addConstantAcceleration: particleAAcceleration for: particleA.
	particleCAcceleration := testResource meterPerSquareSecondVectorWith: #(-1 0 1).
	environmentBuilder addConstantAcceleration: particleCAcceleration for: particleC.
	
	changeEnvironment := environmentBuilder environment.
	change := UniverseChange from: initialState with: changeEnvironment during: testResource oneSecond / 2.

	finalState := change finalState.
	finalPositionA := testResource meterVectorWith: #(0.125 0.125 0.125).
	self assertPositionOf: particleA in: finalState is: finalPositionA.
	finalPositionB := testResource meterVectorWith: #(1.5 1 1).
	self assertPositionOf: particleB in: finalState is: finalPositionB.
	finalPositionC := testResource meterVectorWith: #(-2.625 -2.5 -2.375).
	self assertPositionOf: particleC in: finalState is: finalPositionC.