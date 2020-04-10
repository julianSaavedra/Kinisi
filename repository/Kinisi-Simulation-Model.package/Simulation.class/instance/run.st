simulation
run

	| currentState |
	consumer start.
	self newResultAt: (stepDuration unit with: 0) with: initialState.
	currentState := initialState.
	1 to: simulationDuration // stepDuration do: [:stepNumber |
		currentState := changingBlock value: stepDuration value: currentState.
		self newResultAt: stepDuration * stepNumber with: currentState ].
	consumer finishWith: self result