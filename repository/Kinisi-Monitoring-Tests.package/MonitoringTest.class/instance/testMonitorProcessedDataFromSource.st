tests
testMonitorProcessedDataFromSource

	| dataToBeProcessed source processedData monitor delay monitoring |
	dataToBeProcessed := #(1 2 3).
	source := Buffer new.
	dataToBeProcessed do: [:data | source store: data ].
	source close.
	processedData := OrderedCollection new.
	monitor := DataPluggableMonitor processResultsWith: [:data | processedData add: data].
	delay := Semaphore new.
	monitoring := MonitoringProcess reading: source for: monitor every: delay.
	monitoring start.

	delay signal.
	self waitUntil: processedData has: 1.
	delay signal.
	self waitUntil: processedData has: 2.
	delay signal.
	self waitUntil: processedData has: 3.
	
	self
		assertCollection: dataToBeProcessed
		hasSameElements: processedData.

	monitoring terminate