tests
testInterfaceFinishingActionIsPerformedWhenObservationIsTerminatedWhenPaused

	| finishActionWasPerformed interface |
	interface := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: {interface}
		waiting: delay.

	observationProcess play.
	finishActionWasPerformed := false.
	observationProcess pause.
	self deny: finishActionWasPerformed.

	observationProcess terminate.

	self assert: finishActionWasPerformed