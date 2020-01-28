tests
testMonitorProcessesValuesAfterMonitoringProcessIsStartedUntilMonitoringProcessIsTerminated

	| receivedData monitor monitoringProcess |
	receivedData := OrderedCollection new.
	monitor := SimulationPluggableMonitor
		processResultsWith: [:simulationResult | receivedData add: simulationResult]
		andWhenFinishedDo: [ self monitoringHasFinished ].
	monitoringProcess := SimulationMonitoringProcess from: self bufferWithTenStepResults to: monitor every: (Duration milliSeconds: 100).

	self assert: receivedData isEmpty.
	
	self resetFinishedMonitoringFlag.
	monitoringProcess start.
	self waitUntil: receivedData has: 5.
	monitoringProcess terminate.
	self waitUntilMonitoringFinishes.
	
	self assert: receivedData size equals: 5