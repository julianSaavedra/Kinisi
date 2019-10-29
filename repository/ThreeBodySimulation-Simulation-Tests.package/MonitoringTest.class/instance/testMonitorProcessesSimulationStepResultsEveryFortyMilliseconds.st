tests
testMonitorProcessesSimulationStepResultsEveryFortyMilliseconds

	| betweenResultsTimes lastResultTime monitor periodInMilliSeconds monitoringConsumer simulation amountOfStepsToBeGenerated |
	betweenResultsTimes := OrderedCollection new.
	monitor := SimulationPluggableMonitor
		processResultsWith: [ :simulationResult | 
			| timePair |
			timePair := lastResultTime -> Time now.
			betweenResultsTimes add: timePair.
			lastResultTime := timePair value ].
	
	periodInMilliSeconds := 40.
	monitoringConsumer := SimulationMonitoringConsumer
		for: monitor
		every: (Duration milliSeconds: periodInMilliSeconds).
	
	amountOfStepsToBeGenerated := 10.
	simulation := self
		simulationGeneratingFrom: 0 to: amountOfStepsToBeGenerated
		informingStepsTo: monitoringConsumer.
	lastResultTime := Time now.
	simulation run.
	[ self
		deny: Time now asSeconds - lastResultTime asSeconds > 1
		description: 'More than one second without results'.
	betweenResultsTimes size < amountOfStepsToBeGenerated ] whileTrue.

	self
		assertAverageMilliSecondsIn: betweenResultsTimes
		is: periodInMilliSeconds
		withinPercentage: 5