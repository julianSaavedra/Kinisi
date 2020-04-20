initialization
initializeReading: aSource for: aMonitor every: aDelay 

	| bufferReader |
	source := aSource.
	monitor := aMonitor.
	delay := aDelay.
	bufferReader := self bufferReader.
	process := [ [ true ]
		whileTrue: [ delay wait.
			bufferReader read ] ] newProcess.
	process name: 'Monitoring'.
	process priority: Processor timingPriority - 1.