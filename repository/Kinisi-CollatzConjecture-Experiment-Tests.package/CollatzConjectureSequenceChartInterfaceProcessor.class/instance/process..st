action
process: observation

	observationIndices add: observation time.
	observationStates add: observation value number.
	^self chartBasedOnObservations