action
run
	
	| currentState initialStepResult |
	initialStepResult := SimulationStepResult at: (stepDuration unit with: 0) with: initialState. 
	stepResults add: initialStepResult.
	consumer process: (SimulationStepResultPackage with: initialStepResult).
	currentState := initialState.
	
	1 to: simulationDuration // stepDuration do: [:stepNumber |
		| currentStep |
		currentState := changingBlock value: stepDuration value: currentState.
		currentStep := SimulationStepResult at: (stepDuration * stepNumber) with: currentState.
		stepResults add: currentStep.
		consumer process: (SimulationStepResultPackage with: currentStep) ].
	consumer process: (SimulationHasFinishedPackage new).