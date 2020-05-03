tests
testMonitorFinishingActionIsNotPerformedWhenMonitoringProcessIsTerminatedBeforeStarting

	| monitoring finishActionWasPerformed |
	monitor := self monitorFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	finishActionWasPerformed := false.
	monitoring terminate.

	self deny: finishActionWasPerformed