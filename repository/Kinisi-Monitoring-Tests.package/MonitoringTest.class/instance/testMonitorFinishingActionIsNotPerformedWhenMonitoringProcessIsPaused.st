tests
testMonitorFinishingActionIsNotPerformedWhenMonitoringProcessIsPaused

	| monitoring finishActionWasPerformed |
	monitor := self monitorFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	monitoring play.
	finishActionWasPerformed := false.
	monitoring pause.
	self deny: finishActionWasPerformed.

	monitoring terminate.

	self assert: finishActionWasPerformed