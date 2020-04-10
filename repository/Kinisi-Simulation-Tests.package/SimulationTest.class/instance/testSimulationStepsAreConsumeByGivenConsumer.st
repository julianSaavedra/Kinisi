test
testSimulationStepsAreConsumeByGivenConsumer

	| simulationStepResults consumer simulation |
	simulationStepResults := OrderedCollection new.
	consumer := SimulationStepPluggableConsumer processWith: [:simulationStep | simulationStepResults add: simulationStep value].
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: (second with: 0.5)
		during: (second with: 1)
		informingStepsTo: consumer.
	
	self assert: simulationStepResults isEmpty.
	simulation run.

	0 to: 2 do: [:expectedResult | 
		self assert: (simulationStepResults includes: expectedResult)]
