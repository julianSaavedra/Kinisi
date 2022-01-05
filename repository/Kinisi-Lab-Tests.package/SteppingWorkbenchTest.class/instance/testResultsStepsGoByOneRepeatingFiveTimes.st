tests
testResultsStepsGoByOneRepeatingFiveTimes

	| lab times repetitions |
	repetitions := 5.
	workbench steppingWorkbench
		repeat: repetitions
		steppingBy: steppingDelta.
	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times size equals: 6.
	times overlappingPairsDo: [:aPreviousResultIndex :aFollowingResultIndex |
		self assert: aFollowingResultIndex - aPreviousResultIndex equals: steppingDelta ].
	self assert: times last equals: repetitions * steppingDelta. 