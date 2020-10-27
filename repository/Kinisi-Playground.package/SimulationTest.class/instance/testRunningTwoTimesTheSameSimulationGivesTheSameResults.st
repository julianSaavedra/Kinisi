tests - reduntant
testRunningTwoTimesTheSameSimulationGivesTheSameResults

	| simulation firstResult secondResult firstResultTimes firstResultStates secondResultTimes secondResultStates steppingDefinition |
	steppingDefinition := SteppingDefinition repeat: 10.
	simulation := Simulation
		with: steppingDefinition
		from: 0
		changingBy: self plusOne.

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