tests
testFinalTimeIsTheBiggestTimeAmongOfAllSteps

	| steps simulationResult |
	steps := self stepResultsWithTimeBasedOn: #(1 5 3 4 2).
	simulationResult := SimulationTotalResult from: steps.
	
	self assert: simulationResult finalTime 	equals: 5