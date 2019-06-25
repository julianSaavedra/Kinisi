tests
testChangingBlockIsExecutedTheTotalDurationDividedByStepDurationTimes

	| simulation changingBlockExecution |
	
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | changingBlockExecution := changingBlockExecution + 1 ]
		over: (second with: 0.1)
		during: (second with: 1.1).

	changingBlockExecution := 0.
	simulation run.

	self assert: changingBlockExecution equals: 11