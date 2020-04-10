test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverOneSecondFiveTimes

	| simulation oneSecond zeroSeconds resultTimes intervals |
	oneSecond := second with: 1.
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | currentState + 1]
		repeating: 5
		over: oneSecond.

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