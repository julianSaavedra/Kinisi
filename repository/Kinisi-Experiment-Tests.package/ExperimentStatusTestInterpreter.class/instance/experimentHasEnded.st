interpreting
experimentHasEnded

	^simulationHasEnded and: [ self experimentIsNotBeingObserved or: [ observationHasEnded ] ]