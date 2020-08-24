accessing
timesBetweenObservationsAverage

	| timesBetweenObservations |
	timesBetweenObservations := times overlappingPairsCollect: [:anObservationTime :nextObservationTime | nextObservationTime - anObservationTime  ].
	^timesBetweenObservations average