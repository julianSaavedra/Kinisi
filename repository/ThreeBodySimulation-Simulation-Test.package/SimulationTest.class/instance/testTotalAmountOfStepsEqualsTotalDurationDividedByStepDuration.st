tests
testTotalAmountOfStepsEqualsTotalDurationDividedByStepDuration

	| simulation |
	simulation := Simulation during: (second with: 1.1) stepsOf: (second with: 0.1).
	
	simulation run.
	
	self assert: simulation result amountOfSteps equals: 11