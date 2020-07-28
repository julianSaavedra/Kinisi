test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverHalftSecondUntilFinishConditionIsMet

	| simulation halfSecond zeroSeconds resultTimes finalState steppingMode minusOneChange |
	halfSecond := second with: 0.5.
	steppingMode := SteppingDefinition by: halfSecond untilStateSatifies: [:state | state isZero ].
	minusOneChange := SimulationStateChange with: [:currentState | currentState - 1 ].
	simulation := Simulation
		with: steppingMode
		from: 5
		changingBy: minusOneChange.

	simulation run.

	zeroSeconds := halfSecond * 0.
	resultTimes := simulation result withTimeAndStateCollect: [:time :state | time].
	self assert: resultTimes first equals: zeroSeconds.
	resultTimes overlappingPairsDo: [:step :followingStep |
		self
			assert: followingStep - step
			equals: halfSecond ].
	finalState := (simulation result withTimeAndStateCollect: [:time :state | state]) last.
	self assert: finalState equals: 0 