resolving
resolve

	| experimentStatus |
	(simulationHasNotStarted and: [ experimentIsBeingObserved not or: [ observationHasNotStarted ] ])
		ifTrue: [ experimentStatus := NotStartedExperimentStatus new ].
	(simulationIsRunning or: [ observationIsRunning ])
		ifTrue: [ experimentStatus := RunningExperimentStatus new ].
	(simulationIsPaused or: [ experimentIsBeingObserved and: [ observationIsPaused ] ])
		ifTrue: [ experimentStatus := PausedExperimentStatus new ].
	(simulationHasEnded and: [ experimentIsBeingObserved not or: [ observationHasEnded ] ])
		ifTrue: [ experimentStatus := EndedExperimentStatus new ].
	
	^experimentStatus