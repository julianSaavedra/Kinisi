test - gravitational
testUniverseWithhreeParticlesWithGravitationalInteractionBetweenThem

	| initialState change changeEnvironment environmentBuilder pi triangleSideFactor triangleOrientationAngle particleAAngle originalStateA originalStateB particleBAngle particleCAngle originalStateC mass finalState |
	mass := testResource oneKilogram.
	pi := Float pi.
	triangleSideFactor := 0.001 / 3 sqrt.
	triangleOrientationAngle := pi / 4.
	particleAAngle := triangleOrientationAngle.
	originalStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: mass
		in: (testResource meterVectorWith: {particleAAngle cos. particleAAngle sin. 0}) * triangleSideFactor.
	particleBAngle := triangleOrientationAngle + ((2 * pi) / 3).
	originalStateB := testResource
		physicalStateForParticleNamed: #ParticleB
		with: mass
		in: (testResource meterVectorWith: {particleBAngle cos. particleBAngle sin. 0}) * triangleSideFactor.
	particleCAngle := triangleOrientationAngle + ((4 * pi) / 3).
	originalStateC := testResource
		physicalStateForParticleNamed: #ParticleC
		with: mass
		in: (testResource meterVectorWith: {particleCAngle cos. particleCAngle sin. 0}) * triangleSideFactor.
	
	initialState := ObservableUniverseState withAll: {originalStateA. originalStateB. originalStateC}.

	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addGravitationalInteractionBetweenParticles.
	changeEnvironment := environmentBuilder environment.
	
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.

	finalState := change finalState.
	self assert: originalStateA in: finalState with: [:particle | particle position norm < originalStateA position norm ].
	self assert: originalStateB in: finalState with: [:particle | particle position norm < originalStateB position norm ].
	self assert: originalStateC in: finalState with: [:particle | particle position norm < originalStateC position norm ]