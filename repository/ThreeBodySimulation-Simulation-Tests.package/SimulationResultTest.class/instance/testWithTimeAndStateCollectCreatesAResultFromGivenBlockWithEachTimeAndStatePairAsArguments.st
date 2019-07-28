tests
testWithTimeAndStateCollectCreatesAResultFromGivenBlockWithEachTimeAndStatePairAsArguments

	| steps simulationResult collectResult |
	steps := self stepResultsWithTimeInSecondsBasedOn: #(1 2 3).
	simulationResult := SimulationResult from: steps.
	
	collectResult := simulationResult withTimeAndStateCollect: [:time :state | state * 2 ].
	
	self assert: (collectResult includesAll: #(2 4 6))