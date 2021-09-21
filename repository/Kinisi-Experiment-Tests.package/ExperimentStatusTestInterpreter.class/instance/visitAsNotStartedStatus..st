visiting
visitAsNotStartedStatus: experimentStatus
 
	visitAsObservationStatus
		ifTrue: [
			observationNotStarted := true.
			experimentIsBeingObserved := true ]
		ifFalse: [
			notStarted := true.
			running := false.
			ended := false ]