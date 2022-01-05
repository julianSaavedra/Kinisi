tests
testPrintStringWhenResultIsEmpty

	| result |
	result := SimulationTotalResult empty.

	self assert: result printString equals: 'Result has no steps'