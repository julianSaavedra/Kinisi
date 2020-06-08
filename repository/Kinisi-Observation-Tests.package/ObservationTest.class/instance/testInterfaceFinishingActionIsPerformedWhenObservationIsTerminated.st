tests
testInterfaceFinishingActionIsPerformedWhenObservationIsTerminated

	| finishActionWasPerformed |
	interface := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	finishActionWasPerformed := false.
	observationProcess play.
	self deny: finishActionWasPerformed.
	self tickDelayAndWaitProcessingOfAllPendingSamples.
	self deny: finishActionWasPerformed.

	observationProcess terminate.

	self assert: finishActionWasPerformed