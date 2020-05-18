running
setUp

	super setUp.
	self setUpDataToBeObserved.
	self setUpSource.
	self setUpInterface.
	delay := Semaphore new.
	observedData := OrderedCollection new