visiting
visitAsEndedStatus: experimentStatus
 
	visitingAsObservationStatus
		ifTrue: [
			observationHasEnded := true.
			experimentIsBeingObserved := true ]
		ifFalse: [
			simulationHasNotStarted := false.
			simulationIsRunning := false.
			simulationHasEnded := true ]
	