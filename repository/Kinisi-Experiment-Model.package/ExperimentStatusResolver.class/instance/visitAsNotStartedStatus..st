visiting
visitAsNotStartedStatus: experimentStatus
 
	visitingAsObservationStatus
		ifTrue: [
			observationHasNotStarted := true.
			experimentIsBeingObserved := true ]
		ifFalse: [
			simulationHasNotStarted := true.
			simulationIsRunning := false.
			simulationHasEnded := false ]