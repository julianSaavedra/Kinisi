tests
testReadOnlyBufferRaisesASimulationErrorIfGivenToStoredANewResult

	| buffer | 
	buffer := SimulationStepResultBuffer readOnlyWith: #().

	self should: [ buffer store: 1 ] raise: SimulationError