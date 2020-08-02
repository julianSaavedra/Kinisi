test - stepping
testSimulationResultsStartsAtZeroAndStepsOverOneFiveTimes

	| simulation steppingDefinition result repetitions |
	repetitions := 5.
	steppingDefinition := SteppingDefinition repeat: repetitions.
	simulation := Simulation
		with: steppingDefinition
		from: 0
		changingBy: self plusOne.
		
	simulation run.
	
	result := simulation result.
	self assertIndexesIn: result stepBy: 1.
	self assert: repetitions intervalsIn: result