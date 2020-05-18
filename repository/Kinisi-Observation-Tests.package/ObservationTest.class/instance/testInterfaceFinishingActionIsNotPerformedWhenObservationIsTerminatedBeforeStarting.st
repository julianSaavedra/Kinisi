tests
testInterfaceFinishingActionIsNotPerformedWhenObservationIsTerminatedBeforeStarting

	| monitoring finishActionWasPerformed |
	interface := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	finishActionWasPerformed := false.
	monitoring terminate.

	self deny: finishActionWasPerformed