tests
testMonitorStartingActionIsNotPerformedWhenMonitoringProcessIsResumedAfterPaused

	| monitoring startActionWasPerformedWhenResuming |
	monitor := self monitorStartingWith: [ startActionWasPerformedWhenResuming := true ].
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	monitoring start.
	monitoring pause.
	startActionWasPerformedWhenResuming := false.
	monitoring resume.
	monitoring terminate.
	
	self deny: startActionWasPerformedWhenResuming