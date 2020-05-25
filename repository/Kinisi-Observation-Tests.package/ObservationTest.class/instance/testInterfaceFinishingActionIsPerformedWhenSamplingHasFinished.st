tests
testInterfaceFinishingActionIsPerformedWhenSamplingHasFinished

	| finishActionWasPerformed |
	interface := self
		interfaceFinishingWith: [ finishActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	finishActionWasPerformed := false.
	observationProcess play.

	source flush.
	source finish.
	
	self assertNoNewSamplesAreBeingProcessedWhenTickingDelay.
	self assert: finishActionWasPerformed