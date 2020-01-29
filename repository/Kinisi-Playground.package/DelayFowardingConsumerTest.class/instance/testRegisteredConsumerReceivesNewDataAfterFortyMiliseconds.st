tests
testRegisteredConsumerReceivesNewDataAfterFortyMiliseconds

	| timePairsBetweenSimulationResults registeredConsumer delayedForwardingConsumer expectedSimulationSteps simulation timeFromLastResult timeNow milliSecondsBetweenSimulationResults second periodInMiliseconds |
	second := UnitProvider soleInstance second.
	timePairsBetweenSimulationResults := OrderedCollection new.
	registeredConsumer := SimulationStepPluggableConsumer do: [:simulationStepResult |
		timeNow := Time now.
		timePairsBetweenSimulationResults add: timeFromLastResult -> timeNow.
		timeFromLastResult := timeNow].
	expectedSimulationSteps := 5.
	periodInMiliseconds := 40.
	delayedForwardingConsumer := DelayForwardingConsumer informTo: registeredConsumer every: periodInMiliseconds.
	simulation := Simulation
		startingWith: 0
		changingBy: [ :stepDuration :currentState | currentState + 1 ]
		over: (second with: 0.2)
		during: (second with: 1)
		informingStepsTo: delayedForwardingConsumer.
	simulation run.
	timeFromLastResult	 := Time now.
	delayedForwardingConsumer startFowarding.
	[self deny: (Time now asSeconds - timeFromLastResult asSeconds) > 1 description: 'More than one second without results'.
	timePairsBetweenSimulationResults size < expectedSimulationSteps ] whileTrue: [].

	timePairsBetweenSimulationResults removeFirst.
	milliSecondsBetweenSimulationResults := timePairsBetweenSimulationResults collect: [:timePair | timePair value asMilliSeconds - timePair key asMilliSeconds].
	self assert: (milliSecondsBetweenSimulationResults average - periodInMiliseconds) abs / periodInMiliseconds * 100 <= 5