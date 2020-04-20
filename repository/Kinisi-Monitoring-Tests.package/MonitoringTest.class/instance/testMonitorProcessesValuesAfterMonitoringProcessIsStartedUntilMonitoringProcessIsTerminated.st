tests
testMonitorProcessesValuesAfterMonitoringProcessIsStartedUntilMonitoringProcessIsTerminated

	| dataToBeProcessed source processedData monitor delay monitoring |
	dataToBeProcessed := #(1 2 3).
	source := Buffer new.
	dataToBeProcessed do: [:data | source store: data ].
	source close.
	processedData := OrderedCollection new.
	monitor := DataPluggableMonitor processResultsWith: [:data | processedData add: data].
	delay := Semaphore new.
	monitoring := MonitoringProcess reading: source for: monitor every: delay.

	self 
		should: [ self waitUntil: processedData has: 1 ]
		raise: TimedOut.

	monitoring start.
	delay signal.
	self waitUntil: processedData has: 1.
	delay signal.
	self waitUntil: processedData has: 2.
	monitoring terminate.

	delay signal.
	self 
		should: [ self waitUntil: processedData has: 3 ]
		raise: TimedOut