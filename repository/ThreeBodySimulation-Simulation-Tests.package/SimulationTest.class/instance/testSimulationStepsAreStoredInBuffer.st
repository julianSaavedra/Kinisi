tests
testSimulationStepsAreStoredInBuffer

	| simulation buffer |
	buffer := SimulationStepResultBuffer real.
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: (second with: 0.1)
		during: (second with: 1.1)
		informingStepsTo: buffer.

	simulation run.

	0 to: 11 do: [:expectedStepState |
		self assert: expectedStepState equals: buffer next value ]
