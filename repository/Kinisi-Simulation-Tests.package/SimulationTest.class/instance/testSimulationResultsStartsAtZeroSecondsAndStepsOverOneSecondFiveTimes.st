test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverOneSecondFiveTimes

	| simulation oneSecond zeroSeconds resultTimes intervals steppingMode plusOneChange |
	oneSecond := second with: 1.
	steppingMode := SteppingDefinition repeat: 5 timesBy: oneSecond.
	plusOneChange := SimulationStateChange with: [:currentState | currentState + 1].
	simulation := Simulation
		with: steppingMode
		from: 0
		changingBy: plusOneChange.

	simulation run.

	zeroSeconds := oneSecond * 0.
	resultTimes := simulation result withTimeAndStateCollect: [:time :state | time].
	self assert: resultTimes first equals: zeroSeconds.
	intervals := 0.
	resultTimes overlappingPairsDo: [:step :followingStep |
		intervals := intervals + 1.
		self
			assert: followingStep - step
			equals: oneSecond ].
	self assert: intervals equals: 5