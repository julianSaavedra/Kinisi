test
testParticleFreeFallingWithConstantAcceleration

	| lab particle gravityAcceleration lastUniverseState lastPosition experimentResultStates |
	particle := workbench modelWorkbench newParticle.
	particle position: (resource meterVectorWith: {0. 491. 0.}).
	self assert: particle velocity isZero.
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	
	gravityAcceleration := resource meterPerSquareSecondVectorWith: {0. -9.82. 0.}.
	particle addConstantAcceleration: gravityAcceleration named: 'GravityAcceleration'.
	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastPosition := lastUniverseState particles first position.
	self assert: lastPosition x isZero.
	self assert: lastPosition y amount closeTo: 0.
	self assert: lastPosition z isZero	