support - waiting
waitUntilMonitorProcceses: dataElement

	[ [ monitoredData includes: dataElement ] whileFalse ]
		valueWithin: self oneSecond
		onTimeout: [ Error signal: 'Monitor is not processing new data (Timeout)' ]