visiting
visitAsPausedStatus: experimentStatus

	self
		ifVisitingGeneralDo: [ experimentIsPaused := true ]
		ifSimulationDo: [ simulationIsPaused := true ]
		ifObservationDo: [ observationIsPaused := true. experimentIsBeingObserved := true ]