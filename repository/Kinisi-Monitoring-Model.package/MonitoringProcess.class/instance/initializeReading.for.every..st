initialization
initializeReading: aSource for: aMonitor every: aDelay 

	source := aSource.
	monitor := aMonitor.
	delay := aDelay.
	state := MonitoringNotStarted new.
	process := [ [ true ]
		whileTrue: [ delay wait.
			monitor process: source current ] ] newProcess.
	process name: 'Monitoring'.
	process priority: Processor timingPriority - 1.