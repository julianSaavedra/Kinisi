test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverOneSecondFiveTimes

	| simulation oneSecond steppingDefinition repetitions results |
	repetitions := 5.
	oneSecond := second with: 1.
	steppingDefinition := SteppingDefinition repeat: repetitions timesBy: oneSecond.
	simulation := Simulation
		with: steppingDefinition
		from: 0
		changingBy: self plusOne.

	simulation run.

	results := simulation result.
	self assertIndexesIn: results stepBy: oneSecond.
	self assert: repetitions intervalsIn: results