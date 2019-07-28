action
run
	
	| currentState initialStepResult |
	initialStepResult := SimulationStepResult at: (stepDuration unit with: 0) with: initialState. 
	stepResults add: initialStepResult.
	buffer store: initialStepResult.
	currentState := initialState.
	
	1 to: simulationDuration // stepDuration do: [:stepNumber |
		| currentStep |
		currentState := changingBlock value: stepDuration value: currentState.
		currentStep := SimulationStepResult at: (stepDuration * stepNumber) with: currentState.
		stepResults add: currentStep.
		buffer store: currentStep ]