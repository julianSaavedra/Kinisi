tests
testResultsStepsGoByHalfSecondUntilTenSeconds

	| oneSecond tenSeconds lab times halfSecond |
	oneSecond := resource oneSecond.
	tenSeconds := 10 * oneSecond.
	workbench steppingWorkbench
		stepBy: oneSecond
		over: tenSeconds.
	halfSecond := oneSecond / 2.
	workbench steppingWorkbench delta: halfSecond.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	times := lab lastResult withTimeAndStateCollect: [:time :state | time ].
	self assert: times size equals: 21.
	times overlappingPairsDo: [:aPreviousResultIndex :aFollowingResultIndex |
		self assert: aFollowingResultIndex - aPreviousResultIndex equals: halfSecond ].
	self assert: times last equals: tenSeconds. 