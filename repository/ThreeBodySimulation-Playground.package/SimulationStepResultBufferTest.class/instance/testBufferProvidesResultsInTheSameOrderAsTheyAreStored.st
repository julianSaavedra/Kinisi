tests
testBufferProvidesResultsInTheSameOrderAsTheyAreStored

	| buffer simulationSteps |
	simulationSteps := #(1 2 3).
	buffer := SimulationStepResultBuffer real.

	simulationSteps do: [:step | buffer store: step].
	
	simulationSteps do: [:step | self assert: buffer next equals: step ].
