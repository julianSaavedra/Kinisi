sourcing
next

	^observations
		ifEmpty: [ ObservationPackage null ]
		ifNotEmpty: [ self dequeueNextObservation ]