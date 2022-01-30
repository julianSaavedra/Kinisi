test - new approach
testParticleWithUniformLinearMotionAlongXOnly

	| lab particle experimentModel result resultStates particleStates modelWorkbench |
	experimentModel := ParticleModelScenarioSetting particleWithUniformLinearMotionAlongXOnly.
	modelWorkbench := workbench modelWorkbench.
	experimentModel applyOn: modelWorkbench.
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.

	lab := KinisiLab using: workbench.
	self runExperimentUntilHasFinishedIn: lab.

	result := lab lastResult.
	resultStates := result withTimeAndStateCollect: [ :step :state | state ].
	self denyEmpty: resultStates.
	particle := modelWorkbench scenario particles first.
	particleStates := resultStates collect: [ :universeState | 
		                  universeState particles detect: [ :particleState | 
			                  particleState particleName = particle particleName ] ].
	particleStates do: [:particleState | 
		self assert: particle position x >= particle position x.
		self assert: particleState position y isZero.
		self assert: particleState velocity equals: particle velocity ]