tests
testPrintStringWhenResultIsNotEmpty

	| result steps |
	steps := self stepResultsWithTimeInSecondsBasedOn: #(1 2 3).
	result := SimulationTotalResult from: steps.
	
	self assert: ('Result: * steps [Final at: *]' match: result printString)