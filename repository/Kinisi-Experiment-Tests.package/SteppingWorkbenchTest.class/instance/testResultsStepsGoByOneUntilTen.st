tests
testResultsStepsGoByOneUntilTen

	| totalDuration lab times |
	totalDuration := 10 * steppingDelta.
	workbench steppingWorkbench
		stepBy: steppingDelta
		over: totalDuration.
	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times size equals: 11.
	times overlappingPairsDo: [:aPreviousResultIndex :aFollowingResultIndex |
		self assert: aFollowingResultIndex - aPreviousResultIndex equals: steppingDelta ].
	self assert: times last equals: totalDuration. 