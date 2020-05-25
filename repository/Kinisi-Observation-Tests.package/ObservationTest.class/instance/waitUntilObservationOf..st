support - waiting
waitUntilObservationOf: sample

	[ [ processedSamples includes: sample ] whileFalse ]
		valueWithin: self oneSecond
		onTimeout: [ Error signal: 'Observation is not processing new samples (Timeout)' ]