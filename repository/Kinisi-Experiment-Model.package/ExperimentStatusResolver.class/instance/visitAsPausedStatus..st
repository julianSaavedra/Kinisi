visiting
visitAsPausedStatus: experimentStatus
 
	visitingAsObservationStatus
		ifTrue: [
			observationIsPaused := true.
			experimentIsBeingObserved := true ]
		ifFalse: [
			simulationHasNotStarted := false.
			simulationIsRunning := false.
			simulationIsPaused := true.
			simulationHasEnded := false ]