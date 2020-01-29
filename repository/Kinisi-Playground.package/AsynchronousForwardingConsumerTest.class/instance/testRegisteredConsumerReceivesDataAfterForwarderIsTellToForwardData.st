tests
testRegisteredConsumerReceivesDataAfterForwarderIsTellToForwardData

	| forwardedResults registeredConsumer forwarder simulation second |
	
	forwardedResults := OrderedCollection new.
	registeredConsumer := SimulationStepPluggableConsumer do: [:simulationStepResult |
		forwardedResults add: simulationStepResult ].
	forwarder := AsynchronousForwardingConsumer informTo: registeredConsumer.
	second := UnitProvider soleInstance second.
	simulation := Simulation
		startingWith: 0
		changingBy: [:stepDuration :currentState | currentState + 1 ]
		over: (second with: 0.2)
		during: (second with: 1)
		informingStepsTo: forwarder.
	
	simulation run.

	self assert: forwardedResults isEmpty.
	forwarder forward.
	self assert: forwardedResults size equals: 1.
	forwarder forward.
	self assert: forwardedResults size equals: 2