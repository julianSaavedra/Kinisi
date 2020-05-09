tests
testMonitorFinishingActionIsNotPerformedWhenMonitoringProcessIsTerminatedBeforeStarting

	| monitoring finishActionWasPerformed |
	monitor := self monitorFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.

	finishActionWasPerformed := false.
	monitoring terminate.

	self deny: finishActionWasPerformed