visiting
visitAsEndedStatus: experimentStatus
 
	visitAsObservationStatus
		ifTrue: [
			observationEnded := true.
			experimentIsBeingObserved := true ]
		ifFalse: [
			notStarted := false.
			running := false.
			ended := true ]
	