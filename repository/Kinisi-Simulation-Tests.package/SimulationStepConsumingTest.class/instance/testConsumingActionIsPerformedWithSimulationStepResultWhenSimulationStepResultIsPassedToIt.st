tests
testConsumingActionIsPerformedWithSimulationStepResultWhenSimulationStepResultIsPassedToIt

	| consumer simulationStepResults simulation |
	simulationStepResults := OrderedCollection new.
	consumer := SimulationStepPluggableConsumer
		processWith: [:simulationStep | simulationStepResults add: simulationStep ].
	simulation := self simulationInformingStepsTo: consumer.

	simulation run.
	
	self assert: simulationStepResults areTheOnesProducedBy: simulation