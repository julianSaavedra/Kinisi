tests
testAmountOfSteps

	| steps simulationResult |
	steps := Array with: 1 with: 2 with: 3.
	
	simulationResult := SimulationResult from: steps.
	
	self assert: simulationResult amountOfSteps equals: 3