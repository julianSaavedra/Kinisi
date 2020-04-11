examples
exampleCollatzConjecture

	| simulation |
	simulation := Simulation
		startingWith: (CollatzConjectureState with: 5)
		changingBy: [:stepDuration :currentState | CollatzConjectureStateChange new finalStateFrom: currentState ]
		until: [:currentStep :currentState | currentState number = 1 ].

	simulation run.

	simulation result inspect