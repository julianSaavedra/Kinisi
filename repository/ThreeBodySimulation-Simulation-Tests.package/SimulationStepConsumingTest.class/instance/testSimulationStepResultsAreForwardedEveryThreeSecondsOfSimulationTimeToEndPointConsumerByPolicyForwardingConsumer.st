tests
testSimulationStepResultsAreForwardedEveryThreeSecondsOfSimulationTimeToEndPointConsumerByPolicyForwardingConsumer

	| simulation timeOfForwardedSimulationStepResults endPointConsumer twoSecondsSimulationTimePolicyForwarder twoSeconds oneSecond tenSeconds expectedTimes |
	timeOfForwardedSimulationStepResults := OrderedCollection new.
	oneSecond := UnitProvider soleInstance second with: 1.
	twoSeconds := oneSecond * 2.
	tenSeconds := oneSecond * 10.
	endPointConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStep | timeOfForwardedSimulationStepResults add: simulationStep time ].
	twoSecondsSimulationTimePolicyForwarder := SimulationStepPolicyForwardingConsumer forwardTo: endPointConsumer everySimulationTime: twoSeconds.
	simulation := self
		simulationOver: oneSecond during: tenSeconds
		informingStepsTo: twoSecondsSimulationTimePolicyForwarder.
		
	simulation run.
	expectedTimes := (0 to: 10 by: 2) collect: [:secondsAmount | oneSecond * secondsAmount ].
	
	expectedTimes do: [:expectedTime |
		self assert: (timeOfForwardedSimulationStepResults includes: expectedTime) ]