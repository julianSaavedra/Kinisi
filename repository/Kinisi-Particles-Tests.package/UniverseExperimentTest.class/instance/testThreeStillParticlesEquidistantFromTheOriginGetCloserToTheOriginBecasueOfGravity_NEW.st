test - new approach
testThreeStillParticlesEquidistantFromTheOriginGetCloserToTheOriginBecasueOfGravity_NEW

	| lab lastUniverseState experimentResultStates experimentSetting modelWorkbench originalParticles |
	experimentSetting := ParticleModelScenarioSettingForTests threeStillParticlesEquidistantFromTheOriginWithGravitationalAttraction.
	modelWorkbench := workbench modelWorkbench.
	experimentSetting applyOn: modelWorkbench.

	originalParticles := modelWorkbench scenario particles.
	originalParticles do: [:particle | 
		self assert: particle velocity isZero ].
	lab := KinisiLab using: workbench.

	self runExperimentUntilHasFinishedIn: lab.

	experimentResultStates := lab lastResult
		withTimeAndStateCollect: [ :step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastUniverseState particles do: [:particle |
		| originalParticleState |
		originalParticleState := originalParticles detect: [:originalParticle | originalParticle particleName = particle particleName ].
		self assert: particle position norm < originalParticleState position norm ]