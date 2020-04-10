examples
exampleCollatzConjecture

	| simulation |
	simulation := Simulation
		startingWith: 5
		changingBy: [:stepDuration :currentState | currentState even ifTrue: [ currentState * 3 + 1 ] ifFalse: [ currentState // 2 ]  ]
		until: [:currentStep :currentState | currentState = 1].

	simulation run.

	simulation result inspect