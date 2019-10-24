tests
testConsumingActionIsPerformedWithSimulationStepResultWhenSimulationStepResultIsPassedToIt

	| consumer simulationStepResults simulation |
	simulationStepResults := OrderedCollection new.
	consumer := SimulationStepPluggableConsumer do: [:simulationStep | simulationStepResults add: simulationStep ].
	simulation := self simulationInformingStepsTo: consumer.
	
	self assert: simulationStepResults isEmpty.
	simulation run.
	
	self assert: simulationStepResults notEmpty