tests - simulation coupled
testMonitorProcessesSimulationStepResultsEveryFortyMillisecondsWithToleranceOfFivePercent

	| receivedDataTimes monitor periodInMilliSeconds monitoringConsumer simulation |
	receivedDataTimes := OrderedCollection new.
	monitor := DataPluggableMonitor
		processWith: [:stepResult | receivedDataTimes add: Time now ]
		andWhenFinishedDo: [ self monitoringHasFinished ].
	periodInMilliSeconds := 40.
	monitoringConsumer := SimulationMonitoringConsumer
		for: monitor
		every: (Duration milliSeconds: periodInMilliSeconds).
	simulation := self
		simulationGenerating: 10
		stepsInformingThemTo: monitoringConsumer.

	self waitUntilMonitoringFinishesWhenRunning: simulation.
	
	self
		assertAverageMilliSecondsBetween: receivedDataTimes
		is: periodInMilliSeconds
		withinPercentage: 5