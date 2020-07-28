tests - results
testFinalStateIsTheResultOfApplyingTheChangeOverTheInitalStateUntilTheEnd

	| simulation finalState steppingMode plusOneChange |
	steppingMode := SteppingDefinition to: 10 by: 1.
	plusOneChange := SimulationStateChange with: [:currentState | currentState + 1 ].
	simulation := Simulation
		with: steppingMode
		from: 0
		changingBy: plusOneChange.

	simulation run.

	finalState := (simulation result withTimeAndStateCollect: [:time :state | state]) last.
	self assert: finalState equals: 10