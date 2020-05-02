running
setUp

	super setUp.
	self setUpDataToBeMonitored.
	self setUpSource.
	self setUpMonitor.
	delay := Semaphore new.
	monitoredData := OrderedCollection new