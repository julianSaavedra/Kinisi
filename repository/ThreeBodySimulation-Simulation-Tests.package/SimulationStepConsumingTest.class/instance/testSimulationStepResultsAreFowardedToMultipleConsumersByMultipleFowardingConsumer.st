tests
testSimulationStepResultsAreFowardedToMultipleConsumersByMultipleFowardingConsumer

	| simulation simulationStepResultsA consumerAProcessedFinish simulationStepResultsB consumerBProcessedFinish simulationStepResultsC consumerCProcessedFinish consumerA consumerB consumerC endPointConsumers multipleFowardingConsumer |
	simulationStepResultsA := OrderedCollection new.
	consumerAProcessedFinish := false.
	simulationStepResultsB := OrderedCollection new.
	consumerBProcessedFinish := false.
	simulationStepResultsC := OrderedCollection new.
	consumerCProcessedFinish := false.
	consumerA := SimulationStepPluggableConsumer
		processWith: [ :simulationStep | simulationStepResultsA add: simulationStep value ]
		ifFinishedDo: [ consumerAProcessedFinish := true ].
	consumerB := SimulationStepPluggableConsumer
		processWith: [ :simulationStep | simulationStepResultsB add: simulationStep value ]
		ifFinishedDo: [ consumerBProcessedFinish := true ].
	consumerC := SimulationStepPluggableConsumer
		processWith: [ :simulationStep | simulationStepResultsC add: simulationStep value ]
		ifFinishedDo: [ consumerCProcessedFinish := true ].
	endPointConsumers := OrderedCollection
		with: consumerA
		with: consumerB
		with: consumerC.
	multipleFowardingConsumer := SimulationStepMultipleForwardingConsumer
		withAll: endPointConsumers.

	simulation := self
		simulationGeneratingFrom: 0 to: 2
		informingStepsTo: multipleFowardingConsumer.
		
	simulation run.
	self assert: simulationStepResultsA asArray equals: #(0 1 2).
	self assert: consumerAProcessedFinish.
	self assert: simulationStepResultsB asArray equals: #(0 1 2).
	self assert: consumerBProcessedFinish.
	self assert: simulationStepResultsC asArray equals: #(0 1 2).
	self assert: consumerCProcessedFinish