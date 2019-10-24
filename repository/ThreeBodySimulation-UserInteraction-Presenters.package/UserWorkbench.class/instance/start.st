actions
start

	monitoring
		ifTrue: [ self startWithMonitoring]
		ifFalse: [self startWithoutMonitoring]