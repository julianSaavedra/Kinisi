tests
testMonitorFinishingActionIsPerformedWhenMonitoringProcessIsTerminated

	| monitoring finishActionWasPerformed |
	monitor := self monitorFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	finishActionWasPerformed := false.
	monitoring play.
	self deny: finishActionWasPerformed.
	self tickDelayAndWaitMonitorProcessingForAllExpectedData.
	self deny: finishActionWasPerformed.

	monitoring terminate.

	self assert: finishActionWasPerformed