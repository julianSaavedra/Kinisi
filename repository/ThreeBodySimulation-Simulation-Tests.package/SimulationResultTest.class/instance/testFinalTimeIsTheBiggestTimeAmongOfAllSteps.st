tests
testFinalTimeIsTheBiggestTimeAmongOfAllSteps

	| second steps simulationResult |
	second := UnitProvider soleInstance second.
	steps := #(1 5 3 4 2) collect: [:index | (second with: index) -> index].
	simulationResult := SimulationResult from: steps.
	
	self
		assert: simulationResult finalTime
		equals: (second with: 5)