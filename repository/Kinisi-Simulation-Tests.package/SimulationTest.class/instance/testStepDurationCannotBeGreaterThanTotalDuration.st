test
testStepDurationCannotBeGreaterThanTotalDuration

	self
		should: [ Simulation
			startingWith: 0
			changingBy: [:stepDuration :currentState |  ]
			over: (second with: 2)
			during: (second with: 1) ]
		raise: SimulationError