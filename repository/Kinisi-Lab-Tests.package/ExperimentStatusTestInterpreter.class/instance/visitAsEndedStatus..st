visiting
visitAsEndedStatus: experimentStatus

	self
		ifVisitingGeneralDo: [ ]
		ifSimulationDo: [ simulationHasEnded := true ]
		ifObservationDo: [ observationHasEnded := true. experimentIsBeingObserved := true ]