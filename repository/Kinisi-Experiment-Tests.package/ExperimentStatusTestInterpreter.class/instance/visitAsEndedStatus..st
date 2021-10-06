visiting
visitAsEndedStatus: experimentStatus

	self
		ifVisitingGeneralDo: [ experimentHasEnded := true ]
		ifSimulationDo: [ simulationHasEnded := true ]
		ifObservationDo: [ observationHasEnded := true. experimentIsBeingObserved := true ]