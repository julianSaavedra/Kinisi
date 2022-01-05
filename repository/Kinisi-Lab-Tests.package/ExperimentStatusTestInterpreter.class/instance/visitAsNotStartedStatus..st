visiting
visitAsNotStartedStatus: experimentStatus

	self
		ifVisitingGeneralDo: [ experimentHasNotStarted := true ]
		ifSimulationDo: [ simulationHasNotStarted := true ]
		ifObservationDo: [ observationHasNotStarted := true. experimentIsBeingObserved := true ]