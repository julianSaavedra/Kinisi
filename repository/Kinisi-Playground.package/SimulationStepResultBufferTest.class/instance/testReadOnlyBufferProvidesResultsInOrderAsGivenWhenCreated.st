tests
testReadOnlyBufferProvidesResultsInOrderAsGivenWhenCreated

	| buffer simulationSteps |
	simulationSteps := #(1 2 3).
	buffer := SimulationStepResultBuffer readOnlyWith: simulationSteps.

	simulationSteps do: [:simulationStep |
		self assert: simulationStep equals: buffer next]
