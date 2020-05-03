initialization
initializeReading: aSource for: aMonitor every: aDelay 

	| sourceReader |
	source := aSource.
	monitor := aMonitor.
	delay := aDelay.
	monitoringState := MonitoringNotStarted new.
	sourceReader := self sourceReader.
	process := [ [ true ]
		whileTrue: [ delay wait.
			sourceReader read ] ] newProcess.
	process name: 'Monitoring'.
	process priority: Processor timingPriority - 1.