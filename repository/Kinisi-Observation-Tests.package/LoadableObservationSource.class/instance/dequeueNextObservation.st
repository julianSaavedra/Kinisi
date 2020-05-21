private
dequeueNextObservation

	| nextObservation |
	nextObservation := observations first.
	observations := observations copyWithoutFirst.
	^ObservationPackage with: nextObservation