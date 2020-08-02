test - stepping
testSimulationResultsStartsAtZeroAndStepsOverOneUntilFinishConditionIsMet

	| simulation steppingDefinition results lastStateCondition |
	lastStateCondition := [ :state | state = 5 ].
	steppingDefinition := SteppingDefinition untilStateSatifies: lastStateCondition.
	simulation := Simulation
		with: steppingDefinition
		from: 0
		changingBy: self plusOne.
		
	simulation run.

	results := simulation result.
	self assertIndexesIn: results stepBy: 1.
	self assertLastStateIn: results satisfies: lastStateCondition