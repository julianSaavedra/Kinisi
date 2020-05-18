tests
testInterfaceFinishingActionIsPerformedWhenObservationIsTerminatedWhenPaused

	| monitoring finishActionWasPerformed |
	interface := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	monitoring play.
	finishActionWasPerformed := false.
	monitoring pause.
	self deny: finishActionWasPerformed.

	monitoring terminate.

	self assert: finishActionWasPerformed