tests
testMonitorStartingActionIsPerformedWhenMonitoringProcessIsStartedBeforeAnyDataProcessing

	| monitoring startActionWasPerformed |
	monitor := self monitorStartingWith: [ startActionWasPerformed := true ].
	monitoring := KinisiMonitor
		on: source
		with: monitor
		waiting: delay.

	startActionWasPerformed := false.
	monitoring play.
	
	self assert: startActionWasPerformed.
	monitoring terminate