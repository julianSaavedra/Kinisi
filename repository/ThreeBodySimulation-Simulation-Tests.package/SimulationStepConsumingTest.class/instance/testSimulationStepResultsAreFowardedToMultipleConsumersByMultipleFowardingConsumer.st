tests
testSimulationStepResultsAreFowardedToMultipleConsumersByMultipleFowardingConsumer

	| simulation simulationStepResultsA consumerAProcessedFinish simulationStepResultsB consumerBProcessedFinish simulationStepResultsC consumerCProcessedFinish consumerA consumerB consumerC endPointConsumers multipleFowardingConsumer |
	simulationStepResultsA := OrderedCollection new.
	consumerAProcessedFinish := false.
	simulationStepResultsB := OrderedCollection new.
	consumerBProcessedFinish := false.
	simulationStepResultsC := OrderedCollection new.
	consumerCProcessedFinish := false.
	consumerA := SimulationStepPluggableConsumer do: [:simulationStep | simulationStepResultsA add: simulationStep value ] ifFinishedDo: [ consumerAProcessedFinish := true ].
	consumerB := SimulationStepPluggableConsumer do: [:simulationStep | simulationStepResultsB add: simulationStep value ] ifFinishedDo: [ consumerBProcessedFinish := true ].
	consumerC := SimulationStepPluggableConsumer do: [:simulationStep | simulationStepResultsC add: simulationStep value ] ifFinishedDo: [ consumerCProcessedFinish := true ].
	endPointConsumers := OrderedCollection with: consumerA with: consumerB with: consumerC.
	multipleFowardingConsumer := SimulationStepMultipleFowardingConsumer withAll: endPointConsumers.
	
	simulation := self simulationInformingStepsTo: multipleFowardingConsumer.
	simulation run.
	self assert: simulationStepResultsA asArray equals: #(0 1 2).
	self assert: consumerAProcessedFinish.
	self assert: simulationStepResultsB asArray equals: #(0 1 2).
	self assert: consumerBProcessedFinish.
	self assert: simulationStepResultsC asArray equals: #(0 1 2).
	self assert: consumerCProcessedFinish
	