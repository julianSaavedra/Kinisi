test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverHalftSecondUntilFinishConditionIsMet

	| simulation halfSecond steppingDefinition lastStateCondition results |
	halfSecond := second with: 0.5.
	lastStateCondition := [:state | state = 5 ].
	steppingDefinition := SteppingDefinition by: halfSecond untilStateSatifies: lastStateCondition.
	simulation := Simulation
		with: steppingDefinition
		from: 0
		changingBy: self plusOne.

	simulation run.

	results := simulation result.
	self assertIndexesIn: results stepBy: halfSecond.
	self assertLastStateIn: results satisfies: lastStateCondition