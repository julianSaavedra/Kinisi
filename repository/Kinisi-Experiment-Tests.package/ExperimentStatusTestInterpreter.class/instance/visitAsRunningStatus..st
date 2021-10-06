visiting
visitAsRunningStatus: status

	self
		ifVisitingGeneralDo: [ experimentIsRunning := true ]
		ifSimulationDo: [ simulationIsRunning := true ]
		ifObservationDo: [ observationIsRunning := true. experimentIsBeingObserved := true ]