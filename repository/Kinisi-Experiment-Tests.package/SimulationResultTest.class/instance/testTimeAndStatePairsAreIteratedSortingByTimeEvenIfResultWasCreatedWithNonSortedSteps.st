tests
testTimeAndStatePairsAreIteratedSortingByTimeEvenIfResultWasCreatedWithNonSortedSteps

	| steps simulationResult previousTime |
	steps := self stepResultsWithTimeBasedOn: #(3 2 1).
	simulationResult := SimulationTotalResult from: steps.
	
	previousTime := 0.
	simulationResult withTimeAndStateDo: [:time :state |
		self assert: previousTime < time.
		previousTime := time
		]