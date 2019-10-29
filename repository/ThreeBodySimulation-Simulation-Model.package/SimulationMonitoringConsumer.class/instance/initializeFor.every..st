initialization
initializeFor: monitor every: period

	buffer := Buffer new.
	monitoringProcess := SimulationMonitoringProcess
		from: buffer
		to: monitor
		every: period