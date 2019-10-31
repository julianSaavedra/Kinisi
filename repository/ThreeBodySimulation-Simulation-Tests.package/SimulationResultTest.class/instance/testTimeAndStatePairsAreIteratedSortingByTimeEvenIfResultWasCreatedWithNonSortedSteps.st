tests
testTimeAndStatePairsAreIteratedSortingByTimeEvenIfResultWasCreatedWithNonSortedSteps

	| second steps simulationResult previousTime |
	second := UnitProvider soleInstance second.
	steps := self stepResultsWithTimeInSecondsBasedOn: #(3 2 1).
	simulationResult := SimulationTotalResult from: steps.
	
	previousTime := second with: 0.
	simulationResult withTimeAndStateDo: [:time :state |
		self assert: previousTime < time.
		previousTime := time
		]