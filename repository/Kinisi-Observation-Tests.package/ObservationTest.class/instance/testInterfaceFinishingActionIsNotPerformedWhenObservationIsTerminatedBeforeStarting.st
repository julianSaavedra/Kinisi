tests
testInterfaceFinishingActionIsNotPerformedWhenObservationIsTerminatedBeforeStarting

	| finishActionWasPerformed |
	interfaces := self interfaceFinishingWith: [ finishActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: interfaces
		waiting: delay.

	finishActionWasPerformed := false.
	observationProcess terminate.

	self deny: finishActionWasPerformed