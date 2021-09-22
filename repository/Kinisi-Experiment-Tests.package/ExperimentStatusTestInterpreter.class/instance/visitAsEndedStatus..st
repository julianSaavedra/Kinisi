visiting
visitAsEndedStatus: experimentStatus
 
	visitingAsObservationStatus
		ifTrue: [
			observationHasNotStarted := false.
			observationHasEnded := true.
			experimentIsBeingObserved := true ]
		ifFalse: [
			simulationHasNotStarted := false.
			simulationIsRunning := false.
			simulationHasEnded := true ]
	