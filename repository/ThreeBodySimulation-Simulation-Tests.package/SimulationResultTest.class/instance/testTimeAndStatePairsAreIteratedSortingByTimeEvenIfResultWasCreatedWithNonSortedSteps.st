tests
testTimeAndStatePairsAreIteratedSortingByTimeEvenIfResultWasCreatedWithNonSortedSteps

	| second steps simulationResult previousTime |
	second := UnitProvider soleInstance second.
	steps := #(3 2 1) collect: [:index | (second with: index) -> index].
	simulationResult := SimulationResult from: steps.
	
	previousTime := second with: 0.
	simulationResult withTimeAndStateDo: [:time :state |
		self assert: previousTime < time.
		previousTime := time
		]