tests
testResultsStepsStartsAtZero

	| lab times repetitions |
	repetitions := 5.
	workbench steppingWorkbench
		repeat: repetitions
		steppingBy: steppingDelta.
	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times first isZero