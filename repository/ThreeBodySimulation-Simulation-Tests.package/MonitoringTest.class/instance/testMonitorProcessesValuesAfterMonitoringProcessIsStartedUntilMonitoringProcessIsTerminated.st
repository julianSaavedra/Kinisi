tests
testMonitorProcessesValuesAfterMonitoringProcessIsStartedUntilMonitoringProcessIsTerminated

	| buffer receivedData monitor monitoringProcess postTerminationDataSize |
	buffer := Buffer new.
	1 to: 10 do: [:data | buffer store: (SimulationStepResultPackage with: data)].
	receivedData := OrderedCollection new.
	monitor := SimulationPluggableMonitor processResultsWith: [:simulationResult | receivedData add: simulationResult].
	monitoringProcess := SimulationMonitoringProcess from: buffer to: monitor every: (Duration milliSeconds: 100).

	self assert: receivedData isEmpty.
	monitoringProcess start.
	(Duration milliSeconds: 300) wait.
	monitoringProcess terminate.
	postTerminationDataSize := receivedData size.
	
	self assert: receivedData notEmpty.
	
	(Duration milliSeconds: 300) wait.
	self assert: receivedData size equals: postTerminationDataSize