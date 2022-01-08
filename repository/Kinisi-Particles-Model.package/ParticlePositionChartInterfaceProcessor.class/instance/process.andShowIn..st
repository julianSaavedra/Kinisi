connecting
process: observation andShowIn: display

	observationIndices add: observation time amount.
	observation value particles do: [:particle |
		| observationState |
		observationState := (measureDimension resolve: particle position) amount.
		(observationStatesMap at: particle particleName)
			add: observationState].
	display show: self chartBasedOnObservations