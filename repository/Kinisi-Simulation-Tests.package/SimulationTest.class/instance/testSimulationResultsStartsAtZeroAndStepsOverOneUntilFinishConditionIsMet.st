test - stepping
testSimulationResultsStartsAtZeroAndStepsOverOneUntilFinishConditionIsMet

	| simulation resultTimes finalState |
	simulation := Simulation
		startingWith: 5
		changingBy: [:stepDuration :currentState | currentState - 1 ]
		until: [:currentStep :currentState | currentState = 1 ].

	simulation run.

	resultTimes := simulation result withTimeAndStateCollect: [:time :state | time].
	self assert: resultTimes first equals: 0.
	resultTimes overlappingPairsDo: [:step :followingStep |
		self
			assert: followingStep - step
			equals: 1 ].
	finalState := (simulation result withTimeAndStateCollect: [:time :state | state]) last.
	self assert: finalState equals: 1