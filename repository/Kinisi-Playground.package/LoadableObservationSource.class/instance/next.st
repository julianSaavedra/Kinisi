sourcing
next

	^observations
		ifEmpty: [ ObservationSamplePackage null ]
		ifNotEmpty: [ self dequeueNextObservation ]