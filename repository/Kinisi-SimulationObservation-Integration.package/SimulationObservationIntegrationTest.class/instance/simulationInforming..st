tests
simulationInforming: observationConsumer
	^ Simulation
		startingWith: 5
		changingBy: [ :delta :currentState | currentState - 1 ]
		over: 1
		until: [ :currentStep :currentState | currentState isZero ]
		informingStepsTo: observationConsumer