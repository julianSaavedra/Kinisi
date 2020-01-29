tests
testTimeOfLastResultEqualsSimulationDuration

	| simulation duration |

	duration := second with: 1.1.
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState |  ]
		over: (second with: 0.1)
		during: duration.

	simulation run.

	self
		assert: simulation result finalTime
		equals: duration