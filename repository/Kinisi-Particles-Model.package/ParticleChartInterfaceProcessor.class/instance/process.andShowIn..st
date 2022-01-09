action
process: observation andShowIn: display

	observationIndices add: observation time amount.
	observation value particles do: [:particle | 
		| observedValue |
		observedValue := (measureDimension resolve: (property resolve: particle)) amount.
		(accumulatorsMap at: particle particleName) add: observedValue ].
	display show: self chartBasedOnObservations