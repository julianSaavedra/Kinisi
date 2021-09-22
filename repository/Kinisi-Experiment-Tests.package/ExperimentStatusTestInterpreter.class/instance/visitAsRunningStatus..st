visiting
visitAsRunningStatus: status
 	
	visitingAsObservationStatus
		ifTrue: [
			observationIsRunning := true.
			experimentIsBeingObserved := true  ]
		ifFalse: [
			simulationHasNotStarted := false.
			simulationIsRunning := true.
			simulationHasEnded := false ]