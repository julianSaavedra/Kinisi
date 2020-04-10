test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverOneSecondUntilFinishConditionIsMet

	| simulation oneSecond zeroSeconds resultTimes finalState |
	oneSecond := second with: 1.
	simulation := Simulation
		startingWith: 5
		changingBy: [:stepDuration :currentState | currentState - 1]
		over: oneSecond
		until: [:step :state | state isZero].

	simulation run.

	zeroSeconds := oneSecond * 0.
	resultTimes := simulation result withTimeAndStateCollect: [:time :state | time].
	self assert: resultTimes first equals: zeroSeconds.
	resultTimes overlappingPairsDo: [:step :followingStep |
		self
			assert: followingStep - step
			equals: oneSecond ].
	finalState := (simulation result withTimeAndStateCollect: [:time :state | state]) last.
	self assert: finalState equals: 0 