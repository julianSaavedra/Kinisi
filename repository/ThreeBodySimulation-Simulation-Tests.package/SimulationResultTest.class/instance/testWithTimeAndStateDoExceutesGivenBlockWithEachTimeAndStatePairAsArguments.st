tests
testWithTimeAndStateDoExceutesGivenBlockWithEachTimeAndStatePairAsArguments

	| steps simulationResult timeAmounts results iterationCount |
	timeAmounts := #(1 2 3).
	results := #(A B C).
	steps := self stepResultsWithTimeInSecondsBasedOn: timeAmounts andResultsBasedOn: results.
	simulationResult := SimulationResult from: steps.
	
	iterationCount := 0.
	simulationResult withTimeAndStateDo: [:time :state |
		self assert: (timeAmounts includes: time amount).
		self assert: (results includes: state).
		iterationCount := iterationCount + 1
		].
	
	self assert: iterationCount equals: 3