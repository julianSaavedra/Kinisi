test - constant force
testUniverseWithThreeParticlesDifferentConstantForcesActingOnThemAndDifferentInitialVelocities

	| particleA originalState change finalState particleB particleC finalPositionA finalPositionB finalPositionC changeEnvironment particleAForce particleCForce environmentBuilder |
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
	originalState := ObservableUniverseState withAll: {particleA. particleB. particleC}.

	environmentBuilder := ChangeEnvironmentBuilder for: originalState.
	particleAForce := testResource oneNewtonInAllComponentsVector.
	environmentBuilder addConstantForce: particleAForce for: particleA.
	particleCForce := testResource newtonVectorWith: #(-1 0 1).
	environmentBuilder addConstantForce: particleCForce for: particleC.
	changeEnvironment := environmentBuilder environment.
	change := UniverseChange from: originalState with: changeEnvironment during: testResource halfSecond.

	finalState := change finalState.
	finalPositionA := testResource meterVectorWith: #(0.125 0.125 0.125).
	self assertPositionOf: particleA in: finalState is: finalPositionA.
	finalPositionB := testResource meterVectorWith: #(1.5 1 1).
	self assertPositionOf: particleB in: finalState is: finalPositionB.
	finalPositionC := testResource meterVectorWith: #(-2.625 -2.5 -2.375).
	self assertPositionOf: particleC in: finalState is: finalPositionC.