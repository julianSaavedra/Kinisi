tests
testResultsStepsGoByOneSecondUntilTenSeconds

	| oneSecond tenSeconds lab times |
	oneSecond := resource oneSecond.
	tenSeconds := 10 * oneSecond.
	workbench steppingWorkbench
		stepBy: oneSecond
		over: tenSeconds.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times size equals: 11.
	times overlappingPairsDo: [:aPreviousResultIndex :aFollowingResultIndex |
		self assert: aFollowingResultIndex - aPreviousResultIndex equals: oneSecond ].
	self assert: times last equals: tenSeconds. 