support
simulationInformingStepsTo: consumer

	| second |
	second := UnitProvider soleInstance second.
	^Simulation
		startingWith: 0
		changingBy: [ :stepDuration :currentState | currentState + 1 ]
		over: (second with: 0.5)
		during: (second with: 1)
		informingStepsTo: consumer