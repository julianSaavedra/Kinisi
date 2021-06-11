action
process: observation andShowIn: display

	observationIndices add: observation time.
	observationStates add: observation value number.
	display show: self chartBasedOnObservations