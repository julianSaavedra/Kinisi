initialization
initializeUsing: simulationStatus and: observationStatus

	self initializeDefaults.
	self visitAsSimulationStatus: simulationStatus.
	self visitAsObservationStatus: observationStatus