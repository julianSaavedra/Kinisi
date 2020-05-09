tests
testMonitorFinishingActionIsPerformedWhenMonitoringProcessIsTerminatedWhenPaused

	| monitoring finishActionWasPerformed |
	monitor := self monitorFinishingWith: [ finishActionWasPerformed := true ].
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.

	monitoring play.
	finishActionWasPerformed := false.
	monitoring pause.
	self deny: finishActionWasPerformed.

	monitoring terminate.

	self assert: finishActionWasPerformed