test - gravity
testThreeStillParticlesEquidistantFromTheOriginGetCloserToTheOriginBecasueOfGravity

	| particleA particleB lab lastUniverseState experimentResultStates particleC mass triangleSideFactor pi triangleOrientationAngle particleAAngle particleBAngle particleCAngle |
	mass := resource oneKilogram * 1000.
	pi := Float pi.
	triangleSideFactor := 1 / 3 sqrt.
	triangleOrientationAngle := pi / 4.
	particleAAngle := triangleOrientationAngle.
	particleA := workbench modelWorkbench newParticle.	
	particleA
		particleName: 'ParticleA';
		mass: mass;
		position: (resource meterVectorWith: {particleAAngle cos. particleAAngle sin. 0}) * triangleSideFactor.
	self assert: particleA velocity isZero.

	particleBAngle := triangleOrientationAngle + ((2 * pi) / 3).
	particleB := workbench modelWorkbench newParticle.
	particleB
		particleName: 'ParticleB';
		mass: mass;
		position: (resource meterVectorWith: {particleBAngle cos. particleBAngle sin. 0}) * triangleSideFactor.
	self assert: particleB velocity isZero.

	particleCAngle := triangleOrientationAngle + ((4 * pi) / 3).
	particleC := workbench modelWorkbench newParticle.
	particleC
		particleName: 'ParticleC';
		mass: mass;
		position: (resource meterVectorWith: {particleCAngle cos. particleCAngle sin. 0}) * triangleSideFactor.
	self assert: particleC velocity isZero.
	
	self assert: (particleA position norm closeTo: particleB position norm).
	self assert: (particleA position norm closeTo: particleC position norm).

	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.

	workbench modelWorkbench addGravitationalInteractionBetweenParticles.
	lab := KinisiLab using: workbench.

	self runExperimentUntilHasFinishedIn: lab.

	experimentResultStates := lab lastResult
		withTimeAndStateCollect: [ :step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastUniverseState particles do: [:particle |
		self assert: particle position norm < resource oneMeter ]