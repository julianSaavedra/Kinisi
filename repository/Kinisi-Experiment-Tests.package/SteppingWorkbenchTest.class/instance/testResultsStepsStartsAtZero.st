tests
testResultsStepsStartsAtZero

	| halfSecond lab times repetitions |
	halfSecond := resource oneSecond / 2.
	repetitions := 5.
	workbench steppingWorkbench
		repeat: repetitions
		steppingBy: halfSecond.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times first isZero