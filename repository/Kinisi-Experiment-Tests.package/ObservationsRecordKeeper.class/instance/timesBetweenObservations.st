private
timesBetweenObservations

	^times overlappingPairsCollect:[:anObservationTime :nextObservationTime |
		nextObservationTime - anObservationTime ]