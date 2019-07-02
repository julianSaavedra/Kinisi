action
run
	
	| currentState |
	currentState := initialState.
	1 to: simulationDuration // stepDuration do: [:stepNumber |
		currentState := changingBlock value: stepDuration value: currentState.
		stepResults add: (stepDuration * stepNumber) -> currentState ]