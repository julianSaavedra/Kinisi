action
process: observation andShowIn: display

	observationIndices add: observation time amount.
	observation value particles do: [:particle | 
		| observedValue |
		observedValue := (measureDimension resolve: (property extractFrom: particle)) amount.
		(accumulatorsMap at: particle particleName) add: observedValue ].
	display show: self chartBasedOnObservations