visiting
visitAsRunningStatus: status
 	
	visitAsObservationStatus
		ifTrue: [
			observationRunning := true.
			experimentIsBeingObserved := true  ]
		ifFalse: [
			notStarted := false.
			running := true.
			ended := false ]