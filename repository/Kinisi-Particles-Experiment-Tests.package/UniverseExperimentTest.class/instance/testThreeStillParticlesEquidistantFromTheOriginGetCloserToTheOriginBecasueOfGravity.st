tests
testThreeStillParticlesEquidistantFromTheOriginGetCloserToTheOriginBecasueOfGravity

	| particleA particleB lab lastUniverseState experimentResultStates coordinateX coordinateY particleC mass |
	mass := resource oneKilogram * 1000.
	particleA := workbench modelWorkbench newParticle.	
	particleA
		particleName: 'ParticleA';
		mass: mass;
		position: (resource meterVectorWith: #(1 0 0)).
	self assert: particleA velocity isZero.

	coordinateX := 3 sqrt / 2.
	coordinateY := -0.5.
	particleB := workbench modelWorkbench newParticle.
	particleB
		particleName: 'ParticleB';
		mass: mass;
		position: (resource meterVectorWith: {coordinateX. coordinateY. 0}).
	self assert: particleB velocity isZero.

	particleC := workbench modelWorkbench newParticle.
	particleC
		particleName: 'ParticleC';
		mass: mass;
		position: (resource meterVectorWith: {coordinateX negated. coordinateY. 0}).
	self assert: particleC velocity isZero.
	
	self assert: (particleA position norm closeTo: particleB position norm).
	self assert: (particleA position norm closeTo: particleC position norm).

	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.

	workbench modelWorkbench addGravitationalInteractionBetweenParticles.
	lab := KinisiLab using: workbench.

	lab runExperiment.

	experimentResultStates := lab lastResult
		withTimeAndStateCollect: [ :step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastUniverseState particles do: [:particle |
		self assert: particle position norm < resource oneMeter ]