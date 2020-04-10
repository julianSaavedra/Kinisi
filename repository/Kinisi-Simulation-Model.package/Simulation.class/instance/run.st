simulation
run

	| currentState currentStep initialStep |
	self prepareToRun.
	initialStep := stepDelta unit with: 0.
	self process: initialState at: initialStep.
	currentState := initialState.
	currentStep := initialStep.
	[ currentStep := currentStep + stepDelta.
	endCondition value: currentStep value: currentState ]
		whileFalse: [ currentState := change value: currentStep value: currentState.
			self process: currentState at: currentStep ].
	self performPostRunActions