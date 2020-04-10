tests - results
testRunningTwoTimesTheSameSimulationGivesTheSameResults

	| simulation firstResult secondResult firstResultTimes firstResultStates secondResultTimes secondResultStates |
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: (second with: 1)
		during: (second with: 10).

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