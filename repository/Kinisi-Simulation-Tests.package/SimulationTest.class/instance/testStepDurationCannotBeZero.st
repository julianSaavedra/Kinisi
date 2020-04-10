test
testStepDurationCannotBeZero

	self
		should: [ Simulation
			startingWith: 0
			changingBy: [:stepDuration :currentState |  ]
			over: (second with: 0)
			during: (second with: 1.1) ]
		raise: SimulationError