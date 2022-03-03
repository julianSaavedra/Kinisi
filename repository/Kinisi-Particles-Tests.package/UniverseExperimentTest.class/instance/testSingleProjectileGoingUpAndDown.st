test - new approach
testSingleProjectileGoingUpAndDown

	| lab experimentSetting result resultStates modelWorkbench originalLowerParticle lastLowerParticleState |
	experimentSetting := ParticleModelScenarioSetting projectileGoingUpAndDown.
	modelWorkbench := workbench modelWorkbench.
	experimentSetting applyOn: modelWorkbench.
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	lab := KinisiLab using: workbench.
	self runExperimentUntilHasFinishedIn: lab.
	result := lab lastResult.
	resultStates := result withTimeAndStateCollect: [ :arg1 :arg2 | arg2 ].
	self denyEmpty: resultStates.
	originalLowerParticle := modelWorkbench scenario particles first.
	lastLowerParticleState := resultStates last particles detect: [:aParticle | 
			         aParticle particleName = originalLowerParticle particleName ].
	self
		assert: (lastLowerParticleState position y closeTo: resource oneMeter * 0);
		deny: lastLowerParticleState velocity y amount sign equals: originalLowerParticle velocity y amount sign