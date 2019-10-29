action
finishWith: simulationResult

	buffer store: (SimulationHasFinishedPackage with: simulationResult).
	buffer close