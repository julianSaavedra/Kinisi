tests
testMonitorStartingActionIsPerformedWhenMonitoringProcessIsStartedBeforeAnyDataProcessing

	| monitoring startActionWasPerformed |
	monitor := self monitorStartingWith: [ startActionWasPerformed := true ].
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	startActionWasPerformed := false.
	monitoring start.
	
	self assert: startActionWasPerformed.
	monitoring terminate