initialization
initializeWith: aSimulationStatus and: anObservationStatus

	simulationStatus := aSimulationStatus.
	observationStatus := anObservationStatus.
	generalStatus := (ExperimentStatusResolver using: simulationStatus and: observationStatus) resolve