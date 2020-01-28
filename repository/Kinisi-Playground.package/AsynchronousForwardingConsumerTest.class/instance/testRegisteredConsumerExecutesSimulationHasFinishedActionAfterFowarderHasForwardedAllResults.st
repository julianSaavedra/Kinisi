tests
testRegisteredConsumerExecutesSimulationHasFinishedActionAfterFowarderHasForwardedAllResults

	| finishedActionWasExecuted registeredConsumer forwarder simulation second |

	finishedActionWasExecuted := false.
	registeredConsumer := SimulationStepPluggableConsumer
		onStartDo: nil
		processWith: [ :simulationStepResult |  ]
		andWhenFinishedDo: [ finishedActionWasExecuted := true ].
	forwarder := AsynchronousForwardingConsumer
		informTo: registeredConsumer.
	second := UnitProvider soleInstance second.
	simulation := Simulation
		startingWith: 0
		changingBy: [ :stepDuration :currentState | currentState + 1 ]
		over: (second with: 0.2)
		during: (second with: 1)
		informingStepsTo: forwarder.

	self deny: finishedActionWasExecuted.
	simulation run.
	7 timesRepeat: [ forwarder forward ].

	self assert: finishedActionWasExecuted