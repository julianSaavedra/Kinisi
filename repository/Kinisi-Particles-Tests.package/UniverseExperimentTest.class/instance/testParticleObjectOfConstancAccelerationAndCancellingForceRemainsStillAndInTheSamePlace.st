test
testParticleObjectOfConstancAccelerationAndCancellingForceRemainsStillAndInTheSamePlace

	| lab particle initialPosition acceleration force experimentResultStates |
	particle := workbench modelWorkbench newParticle.
	initialPosition := resource meterVectorWith: #(1 2 3).
	particle position: initialPosition.
	self assert: particle velocity isZero.
	
	particle mass: resource twoKilograms.
	acceleration := resource meterPerSquareSecondVectorWith: #(1 4 -8).
	particle addConstantAcceleration: acceleration named: 'ConstantAcceleration'.
	force := resource newtonVectorWith: #(-2 -8 16).
	particle addConstantForce: force named: 'CancellingForce'.
	
	
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	
	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	self denyEmpty: experimentResultStates.
	experimentResultStates do: [:particleState |
		self assert: particle position equals: initialPosition.
		self assert: particle velocity isZero ]