tests
testMonitorReadsDataFromSourceAndProcessesEachData

	| dataToBeProcessed source processedData monitor delay monitoring |
	dataToBeProcessed := #(1 2 3).
	source := Buffer new.
	dataToBeProcessed do: [:data | source store: data ].
	source close.
	processedData := OrderedCollection new.
	monitor := DataPluggableMonitor processResultsWith: [:data | processedData add: data].
	delay := Semaphore new.
	monitoring := MonitoringNewModelProcess reading: source for: monitor every: delay.

	delay signal; signal; signal.
	monitoring start.
	monitoring terminate.

	self
		assertCollection: dataToBeProcessed
		hasSameElements: processedData