test - new approach
testParticlesMovingWithUniformCircularMovement_NEW

	| lab experimentResultStates experimentSetting modelWorkbench originalParticles |
	experimentSetting := ParticleModelScenarioSettingForTests particlesMovingWithUniformCircularMovement.
	modelWorkbench := workbench modelWorkbench.
	experimentSetting applyOn: modelWorkbench.
	workbench steppingWorkbench
		stepBy: resource oneSecond / 10000
		over: resource oneSecond / 100.

	lab := KinisiLab using: workbench.
	self runExperimentUntilHasFinishedIn: lab.

	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	originalParticles := modelWorkbench scenario particles.
	originalParticles do: [:particle |
		self
			assertPostionAndVelocityOf: particle
			remainWithSimilarNormWithinAll: experimentResultStates]