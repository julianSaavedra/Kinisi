interpreting
experimentIsPaused

	^simulationIsPaused or: [ experimentIsBeingObserved and: [ observationIsPaused ] ]