initialization
initializeBufferReadingProcess

	process := self newBufferReadingProcess.
	process name: 'Simulation Monitoring'.
	process priority: Processor timingPriority - 1