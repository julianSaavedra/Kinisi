tests
testMonitorFinishingActionIsPerformedWhenMonitoringProcessIsTerminated

	| monitoring finishActionWasPerformed |
	monitor := self monitorFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.

	finishActionWasPerformed := false.
	monitoring play.
	self deny: finishActionWasPerformed.
	self tickDelayAndWaitMonitorProcessingForAllExpectedData.
	self deny: finishActionWasPerformed.

	monitoring terminate.

	self assert: finishActionWasPerformed