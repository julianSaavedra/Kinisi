tests
testSimulationStepResultsAreFowardedToMultipleConsumersByMultipleForwardingConsumer

	| simulation simulationStepResultsA consumerAProcessedFinish simulationStepResultsB consumerBProcessedFinish simulationStepResultsC consumerCProcessedFinish consumerA consumerB consumerC endPointConsumers multipleFowardingConsumer consumerAProcessedStart consumerBProcessedStart consumerCProcessedStart |
	simulationStepResultsA := OrderedCollection new.
	consumerAProcessedFinish := false.
	simulationStepResultsB := OrderedCollection new.
	consumerBProcessedFinish := false.
	simulationStepResultsC := OrderedCollection new.
	consumerCProcessedFinish := false.
	consumerA := SimulationStepPluggableConsumer
		processWith: [ :simulationStep | simulationStepResultsA add: simulationStep value ]
		onStartDo: [ consumerAProcessedStart := true ]
		andWhenFinishedDo: [ consumerAProcessedFinish := true ].
	consumerB := SimulationStepPluggableConsumer
		processWith: [ :simulationStep | simulationStepResultsB add: simulationStep value ]
		onStartDo: [ consumerBProcessedStart := true ]
		andWhenFinishedDo: [ consumerBProcessedFinish := true ].
	consumerC := SimulationStepPluggableConsumer
		processWith: [ :simulationStep | simulationStepResultsC add: simulationStep value ]
		onStartDo: [ consumerCProcessedStart := true ]
		andWhenFinishedDo: [ consumerCProcessedFinish := true ].
	endPointConsumers := OrderedCollection
		with: consumerA
		with: consumerB
		with: consumerC.
	multipleFowardingConsumer := SimulationStepMultipleForwardingConsumer
		withAll: endPointConsumers.

	simulation := self
		simulationGeneratingFrom: 0
		to: 2
		informingStepsTo: multipleFowardingConsumer.

	simulation run.
	self assert: consumerAProcessedStart.
	self assert: simulationStepResultsA asArray equals: #(0 1 2).
	self assert: consumerAProcessedFinish.
	self assert: consumerBProcessedStart.
	self assert: simulationStepResultsB asArray equals: #(0 1 2).
	self assert: consumerBProcessedFinish.
	self assert: consumerCProcessedStart.
	self assert: simulationStepResultsC asArray equals: #(0 1 2).
	self assert: consumerCProcessedFinish