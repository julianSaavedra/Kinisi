test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverOneSecondUntilTenSeconds

	| simulation oneSecond tenSeconds steppingDefinition results |
	oneSecond := second with: 1.
	tenSeconds := oneSecond * 10.
	steppingDefinition := SteppingDefinition to: tenSeconds by: oneSecond.
	simulation := Simulation
		with: steppingDefinition
		from: 1
		changingBy: self plusOne.
		
	simulation run.
	
	results := simulation result.
	self assertIndexesIn: results stepBy: oneSecond.
	self assertLastIndexIn: results is: tenSeconds