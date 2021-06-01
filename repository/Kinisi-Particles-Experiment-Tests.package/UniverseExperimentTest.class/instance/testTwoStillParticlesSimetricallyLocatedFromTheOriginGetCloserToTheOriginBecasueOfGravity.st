test - gravity
testTwoStillParticlesSimetricallyLocatedFromTheOriginGetCloserToTheOriginBecasueOfGravity

	| particleA particleB lab lastUniverseState experimentResultStates |
	particleA := workbench modelWorkbench newParticle.
	particleA
		particleName: 'ParticleA';
		mass: resource oneKilogram * 1000;
		position: (resource meterVectorWith: #(1 0 0)).
	self assert: particleA velocity isZero.
	
	particleB := workbench modelWorkbench newParticle.
	particleB
		particleName: 'ParticleB';
		mass: resource oneKilogram * 1000;
		position: (resource meterVectorWith: #(-1 0 0)).
	self assert: particleA velocity isZero.
	
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	
	workbench modelWorkbench addGravitationalInteractionBetweenParticles.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastUniverseState particles do: [:particle |
		self assert: particle position x abs < resource oneMeter.
		self assert: particle position y isZero.
		self assert: particle position z isZero ]