tests
testResultsStepsGoByZeroPointFiveUntilTen

	| ten lab times zeroPointFive |
	ten := 10 * steppingDelta.
	workbench steppingWorkbench
		stepBy: steppingDelta
		over: ten.
	zeroPointFive := 0.5.
	workbench steppingWorkbench delta: zeroPointFive.
	lab := KinisiLab using: workbench.
	
	self runExperimentUntilHasFinishedIn: lab.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times size equals: 21.
	times overlappingPairsDo: [:aPreviousResultIndex :aFollowingResultIndex |
		self assert: aFollowingResultIndex - aPreviousResultIndex equals: zeroPointFive ].
	self assert: times last equals: ten. 