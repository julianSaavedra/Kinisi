tests
testInterfaceStartingActionIsNotPerformedWhenObservationIsResumedAfterPaused

	| monitoring startActionWasPerformedWhenResuming |
	interface := self interfaceStartingWith: [ startActionWasPerformedWhenResuming := true ].
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	monitoring play.
	monitoring pause.
	startActionWasPerformedWhenResuming := false.
	monitoring play.
	monitoring terminate.
	
	self deny: startActionWasPerformedWhenResuming