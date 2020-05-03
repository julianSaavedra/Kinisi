tests
testMonitorStartingActionIsNotPerformedWhenMonitoringProcessIsResumedAfterPaused

	| monitoring startActionWasPerformedWhenResuming |
	monitor := self monitorStartingWith: [ startActionWasPerformedWhenResuming := true ].
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	monitoring play.
	monitoring pause.
	startActionWasPerformedWhenResuming := false.
	monitoring play.
	monitoring terminate.
	
	self deny: startActionWasPerformedWhenResuming