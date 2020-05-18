support - waiting
waitUntilObservationOf: dataElement

	[ [ observedData includes: dataElement ] whileFalse ]
		valueWithin: self oneSecond
		onTimeout: [ Error signal: 'Observation is not processing new data (Timeout)' ]