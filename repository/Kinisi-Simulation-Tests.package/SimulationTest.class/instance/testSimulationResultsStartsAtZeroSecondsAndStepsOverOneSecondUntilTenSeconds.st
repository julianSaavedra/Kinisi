test - stepping
testSimulationResultsStartsAtZeroSecondsAndStepsOverOneSecondUntilTenSeconds

	| simulation oneSecond tenSeconds zeroSeconds resultTimes |
	oneSecond := second with: 1.
	tenSeconds := oneSecond * 10. 
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | ]
		over: oneSecond
		during: tenSeconds.

	simulation run.

	zeroSeconds := oneSecond * 0.
	resultTimes := simulation result withTimeAndStateCollect: [:time :state | time].
	self assert: resultTimes first equals: zeroSeconds.
	resultTimes overlappingPairsDo: [:step :followingStep |
		self
			assert: followingStep - step
			equals: oneSecond ].	
	self assert: resultTimes last equals: tenSeconds