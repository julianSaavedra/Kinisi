tests
testTotalAmountOfStepsEqualsTotalDurationDividedByStepDuration

	| simulation |

	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState |  ]
		over: (second with: 0.1)
		during: (second with: 1.1).

	simulation run.

	self assert: simulation result amountOfSteps equals: 11