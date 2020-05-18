tests
testInterfaceFinishingActionIsPerformedWhenObservationIsTerminated

	| monitoring finishActionWasPerformed |
	interface := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	finishActionWasPerformed := false.
	monitoring play.
	self deny: finishActionWasPerformed.
	self tickDelayAndWaitObservationOfAllExpectedData.
	self deny: finishActionWasPerformed.

	monitoring terminate.

	self assert: finishActionWasPerformed