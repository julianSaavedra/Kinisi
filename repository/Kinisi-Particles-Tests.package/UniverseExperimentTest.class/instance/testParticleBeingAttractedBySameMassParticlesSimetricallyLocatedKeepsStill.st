test - gravity
testParticleBeingAttractedBySameMassParticlesSimetricallyLocatedKeepsStill

	| lab experimentResultStates particleInTheOrigin rightParticle leftParticle particleInTheOriginStates |
	particleInTheOrigin := workbench modelWorkbench newParticle.
	particleInTheOrigin
		particleName: 'AttractedParticle';
		mass: resource oneKilogram;
		position: resource nullPosition.
	self assert: particleInTheOrigin velocity isZero.
	rightParticle := workbench modelWorkbench newParticle.
	rightParticle
		particleName: 'RightParticle';
		mass: (resource oneKilogram * 1e10);
		position: (resource meterVectorWith: {10e3. 0. 0.}).
	leftParticle := workbench modelWorkbench newParticle.
	leftParticle
		particleName: 'LeftParticle';
		mass: rightParticle mass;
		position: rightParticle position * -1.
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	
	workbench modelWorkbench addGravitationalFieldCausedByAll: {leftParticle. rightParticle}.
	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	particleInTheOriginStates := experimentResultStates collect: [:universeState |
		universeState particles detect: [:particle | particle particleName = particleInTheOrigin particleName ]].
	particleInTheOriginStates do: [:particleInTheOriginState |
		self assert: particleInTheOriginState position x amount closeTo: 0.
		self assert: particleInTheOriginState position y isZero.
		self assert: particleInTheOriginState position z isZero]