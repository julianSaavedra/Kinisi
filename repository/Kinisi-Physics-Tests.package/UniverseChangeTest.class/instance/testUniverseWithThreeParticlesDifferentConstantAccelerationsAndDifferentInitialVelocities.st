test - constant acceleration
testUniverseWithThreeParticlesDifferentConstantAccelerationsAndDifferentInitialVelocities

	| particleA originalState change finalState particleB particleC finalPositionA finalPositionB finalPositionC particleAAcceleration particleCAcceleration changeEnvironment changeDescription |
	changeDescription := ChangeDescription empty.
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
	
	particleAAcceleration := self oneMeterPerSquareSecondAcceleration.
	changeDescription addConstantAcceleration: particleAAcceleration for: particleA.
	particleCAcceleration := testResource meterPerSquareSecondVectorWith: #(-1 0 1).
	changeDescription addConstantAcceleration: particleCAcceleration for: particleC.
	
	changeEnvironment := ChangeEnvironment from: changeDescription.
	change := UniverseChange from: originalState with: changeEnvironment during: testResource oneSecond / 2.

	finalState := change finalState.
	finalPositionA := testResource meterVectorWith: #(0.125 0.125 0.125).
	self assertPositionOf: particleA in: finalState is: finalPositionA.
	finalPositionB := testResource meterVectorWith: #(1.5 1 1).
	self assertPositionOf: particleB in: finalState is: finalPositionB.
	finalPositionC := testResource meterVectorWith: #(-2.625 -2.5 -2.375).
	self assertPositionOf: particleC in: finalState is: finalPositionC.