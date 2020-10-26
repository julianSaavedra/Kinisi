tests
testResultsStepsGoByOneUntilStateSatisfiesGivenCondition

	| lab times states |
	workbench steppingWorkbench
		repeatUntilStateSatisfies: [:currentState | currentState = 32]
		steppingBy: 1.

	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times size equals: 6.
	
	states := lab lastResult withTimeAndStateCollect: [:time :state | state ].
	self assert: states last equals: 32