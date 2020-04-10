test
testStepDurationCannotBeNegaive

	self
		should: [ Simulation
			startingWith: 0
			changingBy: [:stepDuration :currentState |  ]
			over: (second with: -1)
			during: (second with: 1.1) ]
		raise: SimulationError