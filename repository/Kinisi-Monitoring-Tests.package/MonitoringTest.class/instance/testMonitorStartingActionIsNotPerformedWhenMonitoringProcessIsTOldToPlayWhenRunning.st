tests
testMonitorStartingActionIsNotPerformedWhenMonitoringProcessIsTOldToPlayWhenRunning

	| monitoring startActionWasPerformed |
	monitor := self monitorStartingWith: [ startActionWasPerformed := true ].
	monitoring := MonitoringProcess
		reading: source
		for: monitor
		every: delay.

	startActionWasPerformed := false.
	monitoring play.
	self assert: startActionWasPerformed.
	
	startActionWasPerformed := false.
	monitoring play.
	self deny: startActionWasPerformed