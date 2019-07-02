tests
testWithTimeAndStateCollectCreatesAResultFromGivenBlockWithEachTimeAndStatePairAsArguments

	| second steps simulationResult collectResult |
	second := UnitProvider soleInstance second.
	steps := #(1 2 3) collect: [:index | (second with: index) -> index].
	simulationResult := SimulationResult from: steps.
	
	collectResult := simulationResult
		withTimeAndStateCollect: [:time :state | state * 2 ].
	
	self assert: (collectResult includesAll: #(2 4 6))