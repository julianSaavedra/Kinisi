action
process: observation andShowIn: display

	self ifThereAreAccumulatorsDo: [ 
		observationIndices add: observation time amount.
		observation value particles do: [ :particle | 
			| observedValue |
			observedValue := (measureDimension extractFrom:
				                  (property extractFrom: particle)) amount.
			(accumulatorsMap at: particle particleName) add: observedValue ] ].
	display show: self chartBasedOnObservations