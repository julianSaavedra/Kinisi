tests
testMonitorStartingActionIsNotPerformedWhenMonitoringProcessIsResumedAfterPaused

	| monitoring startActionWasPerformedWhenResuming |
	monitor := self monitorStartingWith: [ startActionWasPerformedWhenResuming := true ].
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.

	monitoring play.
	monitoring pause.
	startActionWasPerformedWhenResuming := false.
	monitoring play.
	monitoring terminate.
	
	self deny: startActionWasPerformedWhenResuming