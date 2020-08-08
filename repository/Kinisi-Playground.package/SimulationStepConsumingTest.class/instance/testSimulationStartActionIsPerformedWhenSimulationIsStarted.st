tests
testSimulationStartActionIsPerformedWhenSimulationIsStarted

	| consumer simulationStartBlockWasPerformedBeforeProcessBlock processActionWasNotExecutedYet simulation |

	consumer := SimulationStepPluggableConsumer
		onStartDo: [ simulationStartBlockWasPerformedBeforeProcessBlock := true
				and: [ processActionWasNotExecutedYet ] ]
		processWith: [ :simulationStepResult | processActionWasNotExecutedYet := false ]
		andWhenFinishedDo: [  ].
	simulation := self simulationInformingStepsTo: consumer.
	processActionWasNotExecutedYet := true.

	simulation run.

	self assert: simulationStartBlockWasPerformedBeforeProcessBlock