test - new approach
testParticleFreeFallingWithConstantAcceleration_NEW

	| lab lastUniverseState lastPosition experimentResultStates experimentModel modelWorkbench |
	experimentModel := ParticleModelScenarioSetting particleFreeFallingWithConstantAcceleration.
	modelWorkbench := workbench modelWorkbench.
	experimentModel applyOn: modelWorkbench.
	workbench steppingWorkbench
		stepBy: resource oneSecond / 10
		over: resource oneSecond * 10.

	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastPosition := lastUniverseState particles first position.
	self assert: lastPosition x isZero.
	self assert: lastPosition y amount closeTo: 0.
	self assert: lastPosition z isZero	