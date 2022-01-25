test - new approach
testMultipleProjectilesWithSameVelocityInXDimensionAndDifferentInitialVelocityInYDimension

	| lab experimentSetting result resultStates modelWorkbench originalParticles originalParticlesSortedByVelocityY originalLowerParticle originalMiddleParticle originalHigherParticle lastLowerParticleState lastMiddleParticleState lastHigherParticleState |
	experimentSetting := ParticleModelScenarioSettingForTests
		        projectilesWithSameVelocityInXDimensionAndDifferentInitialVelocityInYDimension.
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
	originalParticles := modelWorkbench scenario particles.
	originalParticlesSortedByVelocityY := originalParticles asSortedCollection: [ :arg3 :arg4 | 
		         arg3 velocity y < arg4 velocity y ].
	originalLowerParticle := originalParticlesSortedByVelocityY first.
	originalMiddleParticle := originalParticlesSortedByVelocityY second.
	originalHigherParticle := originalParticlesSortedByVelocityY third.
	lastLowerParticleState := resultStates last particles detect: [:aParticle | 
			         aParticle particleName = originalLowerParticle particleName ].
	lastMiddleParticleState := resultStates last particles detect: [:aParticle | 
			         aParticle particleName = originalMiddleParticle particleName ].
	lastHigherParticleState := resultStates last particles detect: [:aParticle | 
			         aParticle particleName = originalHigherParticle particleName ].
	self
		assert: (lastLowerParticleState position y closeTo: resource oneMeter * 0);
		deny: lastLowerParticleState velocity y amount sign equals: originalLowerParticle velocity y amount sign.
	self
		assert: lastMiddleParticleState position y > originalMiddleParticle position y;
		deny: lastMiddleParticleState velocity y amount sign equals: originalMiddleParticle velocity y amount sign.
	self
		assert: lastHigherParticleState position y > originalHigherParticle position y;
		deny: (lastHigherParticleState velocity y closeTo: resource nullVelocity y)