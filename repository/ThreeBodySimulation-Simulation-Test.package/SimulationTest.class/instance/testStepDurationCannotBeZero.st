tests
testStepDurationCannotBeZero

	self
		should: [ Simulation during: (second with: 1.1) stepsOf: (second with: 0) ]
		raise: SimulationError