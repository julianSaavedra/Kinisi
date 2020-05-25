tests
testInterfaceFinishingActionIsNotPerformedWhenObservationIsTerminatedBeforeStarting

	| finishActionWasPerformed |
	interface := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	finishActionWasPerformed := false.
	observationProcess terminate.

	self deny: finishActionWasPerformed