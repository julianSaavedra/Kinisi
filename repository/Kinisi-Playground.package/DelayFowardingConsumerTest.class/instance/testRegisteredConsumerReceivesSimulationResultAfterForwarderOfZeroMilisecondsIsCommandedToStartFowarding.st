tests
testRegisteredConsumerReceivesSimulationResultAfterForwarderOfZeroMilisecondsIsCommandedToStartFowarding

	| fowardedSimulationResults registeredConsumer delayedForwardingConsumer expectedSimulationSteps simulation zeroMilliSeconds second |
	fowardedSimulationResults := OrderedCollection new.
	registeredConsumer := SimulationStepPluggableConsumer do: [:simulationStepResult |
		fowardedSimulationResults add: simulationStepResult].
	expectedSimulationSteps := 1.
	zeroMilliSeconds := 0.
	delayedForwardingConsumer := DelayForwardingConsumer informTo: registeredConsumer every: zeroMilliSeconds.
	second := UnitProvider soleInstance second.
	simulation := Simulation
		startingWith: 0
		changingBy: [ :stepDuration :currentState | currentState + 1 ]
		over: (second with: 1)
		during: (second with: 1) * expectedSimulationSteps
		informingStepsTo: delayedForwardingConsumer.
	simulation run.
	self assert: fowardedSimulationResults isEmpty.
	
	delayedForwardingConsumer startFowarding.
	
	self assert: fowardedSimulationResults notEmpty