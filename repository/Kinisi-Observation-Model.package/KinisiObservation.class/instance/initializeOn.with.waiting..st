initialization
initializeOn: aSource with: anInterface waiting: aSignal 

	source := aSource.
	interface := anInterface.
	signal := aSignal.
	state := ObservationNotStarted new.
	process := [
		[ true ] whileTrue: [
			signal wait.
			source next beProcessedBy: self ]
	 ] newProcess.
	process name: 'Observation'.
	process priority: Processor timingPriority - 1