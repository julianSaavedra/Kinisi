tests
testInterfaceFinishingActionIsPerformedWhenSourcingBufferIsClosedAndAllRemainingSamplesAreProcessed

	| finishActionWasPerformed interface |
	interface := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: {interface}
		waiting: delay.

	finishActionWasPerformed := false.
	observationProcess play.

	self tickDelayAndWaitProcessingOfAllPendingSamples.
	buffer close.
	
	self assertNoNewSampleIsProcessedWhenTickingDelay.
	self assert: finishActionWasPerformed