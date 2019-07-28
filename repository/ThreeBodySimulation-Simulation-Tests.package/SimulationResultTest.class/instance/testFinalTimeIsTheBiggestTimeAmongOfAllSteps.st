tests
testFinalTimeIsTheBiggestTimeAmongOfAllSteps

	| second steps simulationResult |
	second := UnitProvider soleInstance second.
	steps := self stepResultsWithTimeInSecondsBasedOn: #(1 5 3 4 2).
	simulationResult := SimulationResult from: steps.
	
	self
		assert: simulationResult finalTime
		equals: (second with: 5)