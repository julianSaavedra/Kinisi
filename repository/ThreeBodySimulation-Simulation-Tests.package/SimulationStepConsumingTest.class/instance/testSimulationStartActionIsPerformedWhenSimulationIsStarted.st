tests
testSimulationStartActionIsPerformedWhenSimulationIsStarted

	| consumer simulationStartBlockWasPerformedBeforeProcessBlock processActionWasNotExecutedYet simulation |
	consumer := SimulationStepPluggableConsumer
		processWith: [:simulationStepResult | processActionWasNotExecutedYet := false ]
		onStartDo: [ simulationStartBlockWasPerformedBeforeProcessBlock := true and: [processActionWasNotExecutedYet] ]
		andWhenFinishedDo: [ ] .
	simulation := self simulationInformingStepsTo: consumer.
	processActionWasNotExecutedYet := true.

	simulation run.

	self assert: simulationStartBlockWasPerformedBeforeProcessBlock