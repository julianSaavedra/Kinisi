tests - results
testRunningTwoTimesTheSameSimulationGivesTheSameResults

	| simulation firstResult secondResult firstResultTimes firstResultStates secondResultTimes secondResultStates steppingMode plusOneChange |
	steppingMode := SteppingDefinition to: 10 by: 1.
	plusOneChange := SimulationStateChange with: [:currentState | currentState + 1 ].
	simulation := Simulation
		with: steppingMode
		from: 0
		changingBy: plusOneChange.

	simulation run.
	firstResult := simulation result.
	simulation run.
	secondResult := simulation result.

	firstResultTimes := firstResult withTimeAndStateCollect: [:time :state | time].
	firstResultStates := firstResult withTimeAndStateCollect: [:time :state | state].
	secondResultTimes := secondResult withTimeAndStateCollect: [:time :state | time].
	secondResultStates := secondResult withTimeAndStateCollect: [:time :state | state].

	self assertCollection: firstResultTimes hasSameElements: secondResultTimes.
	self assertCollection: firstResultStates hasSameElements: secondResultStates