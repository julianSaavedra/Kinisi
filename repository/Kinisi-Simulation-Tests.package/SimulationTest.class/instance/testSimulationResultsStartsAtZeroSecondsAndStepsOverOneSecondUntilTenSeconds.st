test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverOneSecondUntilTenSeconds

	| simulation oneSecond tenSeconds zeroSeconds resultTimes steppingMode plusOneChange |
	oneSecond := second with: 1.
	tenSeconds := oneSecond * 10.	
	steppingMode := SteppingDefinition to: tenSeconds by: oneSecond.
	plusOneChange := SimulationStateChange with: [:currentState | currentState + 1].
	simulation := Simulation
		with: steppingMode
		from: 1
		changingBy: plusOneChange.

	simulation run.

	zeroSeconds := oneSecond * 0.
	resultTimes := simulation result withTimeAndStateCollect: [:time :state | time].
	self assert: resultTimes first equals: zeroSeconds.
	resultTimes overlappingPairsDo: [:step :followingStep |
		self
			assert: followingStep - step
			equals: oneSecond ].	
	self assert: resultTimes last equals: tenSeconds