tests
testSimulationHasFinishedActionIsPerformedWithSimulationTotalResultAsArgumentWhenSimulationHasFinished

	| consumer simulationStepResults simulation |

	simulationStepResults := OrderedCollection new.
	consumer := SimulationStepPluggableConsumer
		onStartDo: [  ]
		processWith: [ :simulationStepResult |  ]
		andWhenFinishedDo: [ :simulationResult | 
			simulationResult
				withTimeAndStateDo: [ :time :state | simulationStepResults add: state ] ].
	simulation := self
		simulationGeneratingFrom: 0
		to: 2
		informingStepsTo: consumer.

	simulation run.

	self assert: simulationStepResults asArray equals: #(0 1 2)