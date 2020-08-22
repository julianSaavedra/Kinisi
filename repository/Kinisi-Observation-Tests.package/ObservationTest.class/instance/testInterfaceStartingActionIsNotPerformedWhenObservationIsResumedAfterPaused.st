tests
testInterfaceStartingActionIsNotPerformedWhenObservationIsResumedAfterPaused

	| startActionWasPerformedWhenResuming interface |
	interface := self interfaceStartingWith: [ startActionWasPerformedWhenResuming := true ].
	observationProcess := KinisiObservation
		on: source
		with: {interface}
		waiting: delay.

	observationProcess play.
	observationProcess pause.
	startActionWasPerformedWhenResuming := false.
	observationProcess play.
	
	self deny: startActionWasPerformedWhenResuming