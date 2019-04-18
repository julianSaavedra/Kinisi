tests
testTotalDurationCannotBeNegative
	
	self
		should: [ Simulation during: (second with: -1.1) stepsOf: (second with: 0.1) ]
		raise: SimulationError