tests
testNoDataIsObservedIfSourceHasNoNewDataAvailable

	| observationProcess |
	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	source flush.
	self assertEmpty: observedData.
	observationProcess play.
	
	self assertTimeoutWhen: [ self tickDelayForNextExpectedDataElementAndWaitUntilItIsObserved ].

	self feedNextDataElementInto: source.
	self tickDelayForNextExpectedDataElementAndWaitUntilItIsObserved.
	self denyEmpty: observedData.
	
	self assertTimeoutWhen: [ self tickDelayForNextExpectedDataElementAndWaitUntilItIsObserved ].
	
	observationProcess terminate