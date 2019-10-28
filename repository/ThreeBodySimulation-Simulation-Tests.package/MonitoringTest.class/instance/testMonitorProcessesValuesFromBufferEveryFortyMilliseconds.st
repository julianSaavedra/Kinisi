tests
testMonitorProcessesValuesFromBufferEveryFortyMilliseconds

	| buffer receivedDataTimes lastResultTime monitor periodInMilliSeconds monitoringProcess milliSecondsBetweenResults |
	buffer := Buffer new.
	1 to: 5 do: [:data | buffer store: data].
	buffer close.
	receivedDataTimes := OrderedCollection new.
	monitor := SimulationPluggableMonitor action: [:simulationResult |
		| timePair |
		timePair := lastResultTime -> Time now.
		receivedDataTimes add: timePair.
		lastResultTime := timePair value ].
	periodInMilliSeconds := 40.
	monitoringProcess := SimulationMonitoringProcess from: buffer to: monitor every: (Duration milliSeconds: periodInMilliSeconds).
	
	lastResultTime := Time now.
	monitoringProcess start.
	[
		self deny: (Time now asSeconds - lastResultTime asSeconds) > 1 description: 'More than one second without results'.
		receivedDataTimes size < 5] whileTrue.
	monitoringProcess terminate.

	milliSecondsBetweenResults := receivedDataTimes collect: [:startAndEndTimePair | startAndEndTimePair  value asMilliSeconds - startAndEndTimePair key asMilliSeconds].
	self assert: (milliSecondsBetweenResults average - periodInMilliSeconds) abs / periodInMilliSeconds * 100 <= 5