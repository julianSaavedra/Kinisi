initialization
initializeFrom: aBuffer to: aSimulationMonitor every: aPeriod

	sourceBuffer := aBuffer.
	monitor := aSimulationMonitor.
	period := aPeriod.
	self initializeBufferReadingProcess