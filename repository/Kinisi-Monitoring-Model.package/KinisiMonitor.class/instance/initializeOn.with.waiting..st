initialization
initializeOn: aSource with: anInterface waiting: aSignal 

	source := aSource.
	interface := anInterface.
	signal := aSignal.
	state := MonitoringNotStarted new.
	process := [
		[ true ] whileTrue: [
			signal wait.
			interface process: source current ]
	 ] newProcess.
	process name: 'Monitoring'.
	process priority: Processor timingPriority - 1