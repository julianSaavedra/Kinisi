tests
testTotalAmountOfStepsEqualsTotalDurationDividedByStepDuration

	| second simulation |
	second := UnitProvider soleInstance second.
	simulation := Simulation during: (second with: 1.1) stepsOf: (second with: 0.1).
	
	simulation run.
	
	self assert: simulation stepResults size equals: 11