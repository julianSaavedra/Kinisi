tests
testNullBufferRaisesASimualtionErrorIfAskedForAResult

	| buffer |
	buffer := SimulationStepResultBuffer null.
	buffer store: 1.
	
	self
		should: [ buffer next ]
		raise: SimulationError
