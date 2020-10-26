tests
testResultsStepsGoByHalfSecondRepeatingFiveTimes

	| halfSecond lab times repetitions |
	halfSecond := resource oneSecond / 2.
	repetitions := 5.
	workbench steppingWorkbench
		repeat: repetitions
		steppingBy: halfSecond.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times size equals: 6.
	times overlappingPairsDo: [:aPreviousResultIndex :aFollowingResultIndex |
		self assert: aFollowingResultIndex - aPreviousResultIndex equals: halfSecond ].
	self assert: times last equals: repetitions * halfSecond. 