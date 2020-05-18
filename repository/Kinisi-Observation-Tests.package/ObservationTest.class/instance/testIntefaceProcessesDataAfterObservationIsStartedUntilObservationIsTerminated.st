tests
testIntefaceProcessesDataAfterObservationIsStartedUntilObservationIsTerminated

	| monitoring |
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	self assertTimeoutWhen: [ self waitUntilFirstExpectedDataIsObserved ].

	monitoring play.
	self tickDelayAndWaitObservationOfAllExpectedDataButLastElement.
	monitoring terminate.

	self assertTimeoutWhen: [ self waitUntilLastExpectedDataIsObserved ]